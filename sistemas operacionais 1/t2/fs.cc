#include "fs.h"
#include <iostream>
#include <cstring>

// função que formata o disco, sobrescrevendo todos os dados, e inicializando o superbloco adequadamente
// por segurança, sistema de arquivos não pode ter sio montado antes de realizar a formatação
int INE5412_FS::fs_format()
{
	if (is_mounted)
	{
		cout << "Erro: sistema de arquivos montado!\n";
		return 0;
	}

	union fs_block empty = {}; // sobrescreve todos os blocos com um bloco vazio, zerado

	for (int i = 1; i < disk->size(); i++)
		disk->write(i, empty.data);

	// criação do novo superbloco a partir das informações do disco
    union fs_block new_superblock = {};
    new_superblock.super.magic = FS_MAGIC;
    new_superblock.super.nblocks = disk->size();
    new_superblock.super.ninodeblocks = new_superblock.super.nblocks / 10;
	if (new_superblock.super.ninodeblocks <=0) new_superblock.super.ninodeblocks = 1; // reserva 10% de blocos como inode blocks (no mínimo 1)
    new_superblock.super.ninodes = new_superblock.super.ninodeblocks * INODES_PER_BLOCK;

    disk->write(0, new_superblock.data); // escreve o superbloco no bloco 0 do disco

	return 1;
}

// função que printa informações sobre os blocos e inodes do disco
// as informações sobre os inodes apenas são printadas se o sistema de arquivos está montado
void INE5412_FS::fs_debug()
{
	union fs_block block;

	disk->read(0, block.data); // leitura do superbloco

	// informações sobre o superbloco
	cout << "superblock:\n";
	cout << "    " << (block.super.magic == FS_MAGIC ? "magic number is valid\n" : "magic number is invalid!\n");
 	cout << "    " << block.super.nblocks << " blocks\n";
	cout << "    " << block.super.ninodeblocks << " inode blocks\n";
	cout << "    " << block.super.ninodes << " inodes\n";

	// apenas printa informações sobre os inodes e demais blocos caso esteja montado
	if (is_mounted)
	{
		for (int inumber = 1; inumber <= superblock.ninodes; inumber++) // percorre todos os inodes
		{
			fs_inode inode;
			if(!inode_load(inumber, &inode)) return; // carrega o inode do determinado inumber

			// apenas informações de inodes válidos são printadas
			if (inode.isvalid)
			{
				cout << "inode " << inumber << ":\n";
				cout << "    size: " << inode.size << " bytes\n";
				string direct_blocks = get_direct_blocks(&inode);

				if (direct_blocks.length())
				{
					cout << "    direct blocks: " << direct_blocks << "\n";
				}
				
				if (inode.indirect) // verifica se há um bloco indireto válido
				{
					// informações sobre o bloco indireto
					cout << "    indirect block: ";
					cout << inode.indirect << "\n";

					string indirect_blocks = get_indirect_blocks(&inode);
					
					if (indirect_blocks.length())
					{
						cout << "    indirect data blocks: " << indirect_blocks << "\n";
					}
				}
			}
		}
	}
}

// função que monta o sistema de arquivos, formando o bitmap de blocos livres (0) e ocupados (1) além de carregar o superbloco em memória
int INE5412_FS::fs_mount()
{
	if (is_mounted)
	{
		cout << "Erro: sistema de arquivos já está montado!\n";
		return 0;
	}

	fs_block block;
	disk->read(0, block.data); //leitura do superbloco

	// verifica se existe um sistema de arquivos
	if(block.super.magic != FS_MAGIC)
	{
		cout << "Erro: sistema de arquivos não encontrado!\n";
		return 0;
	}

	superblock = block.super; // superbloco carregado em memória

	initialize_bitmap(); // inicializa o vetor de bitmaps com zeros

	vector_bitmap[0] = 1; // bloco do superbloco ocupado

	fs_block inode_blocks;
	for (int i = 1; i <= superblock.ninodeblocks; i++) // percorre os blocos de inode
	{
		vector_bitmap[i] = 1; // bloco de inode ocupado
		disk->read(i, inode_blocks.data); // leitura do bloco de inode (necessário para saber quais blocos estão ocupados)
		for (int j = 1; j < INODES_PER_BLOCK; j++) // percorre os inodes do bloco
		{
			fs_inode inode = inode_blocks.inode[j-1];
			if (inode.isvalid)
			{
				for (int bloco_direto = 0; bloco_direto < POINTERS_PER_INODE; bloco_direto++) // para cada bloco direto do inode, atualiza o bitmap como ocupado
				{
					int pointer = inode.direct[bloco_direto];
					if (pointer)
						vector_bitmap[pointer] = 1;
				}

				if (inode.indirect) // verifica se há bloco indireto
				{
					vector_bitmap[inode.indirect] = 1; // bloco indireto ocupado
					union fs_block bloco_indireto;
					disk->read(inode.indirect, bloco_indireto.data);
					for (int ponteiro_indireto = 0; ponteiro_indireto < POINTERS_PER_BLOCK; ponteiro_indireto++) // para cada ponteiro do bloco indireto, atualiza o bitmap como ocupado
					{
						int pointer = bloco_indireto.pointers[ponteiro_indireto];
						if (pointer)
							vector_bitmap[pointer] = 1;
					}
				}
			}
		}

	}

	is_mounted = true;

	return 1; // montagem bem sucedida
}

// função que cria um novo inode no disco, setando-o como válido
// o inode é criado apenas se o sistema de arquivos está montado
int INE5412_FS::fs_create()
{
	if (is_mounted)
	{
		for (int inumber = 1; inumber <= superblock.ninodes; inumber++) // percorre todos os inodes
		{
			fs_inode inode;
			if (!inode_load(inumber, &inode)) return 0; //carrega o inode
			
			if (!inode.isvalid) // para o primeiro inode não válido encontrado, cria um novo inode vazio (mas válido) e escreve no disco
			{
				fs_inode new_inode = {}; // inode criado, vazio
				new_inode.isvalid = 1;
				if (!inode_save(inumber, &new_inode)) return 0; // escrevendo novo inode no disco
				return inumber;
			}
		}
		cout << "Erro: número máximo de inodes criados!\n";
		return 0;
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função que deleta inode e sues blocos (diretos e indiretos) ocupados
// o inode é deletado apenas se o sistema de arquivos está montado
int INE5412_FS::fs_delete(int inumber)
{
	
	fs_inode inode;
	if(!inode_load(inumber, &inode)) return 0; // inode a ser deletado é carregado

	if(!inode.isvalid) // o inode só é definitivamente deletado se ele for válido
	{
		cout << "Erro: inode não é válido!\n";
		return 0;
	}

	for (int direct_block = 0; direct_block < POINTERS_PER_INODE; direct_block++) // deleta cada um dos blocos diretos do inode a ser deletado
	{
		int pointer = inode.direct[direct_block];
		if (pointer)
		{
			if(!delete_block(pointer)) return 0; // deleta o bloco direto apontado pelo inode
			inode.direct[direct_block] = 0; // remove a referência do bloco direto
		}
	}

	if (inode.indirect)
	{
		fs_block indirect_block;
		disk->read(inode.indirect, indirect_block.data); // lê o bloco indireto do inode, caso haja

		for (int ponteiro_indireto = 0; ponteiro_indireto < POINTERS_PER_BLOCK; ponteiro_indireto++) // deleta cada um dos blocos apontados pelo bloco indireto do inode
		{
			int pointer = indirect_block.pointers[ponteiro_indireto];
			if (pointer) // deleta o ponteiro apenas se ele for válido
			{
				if(!delete_block(pointer)) return 0;
			}
		}

		if(!delete_block(inode.indirect)) return 0; // deleta o próprio bloco indireto
		inode.indirect = 0; // remove a referência do bloco indireto
	}

	inode.isvalid = 0; // torna o inode inválido
	inode.size = 0; // zera o tamanho do inode
	
	if (!inode_save(inumber, &inode)) return 0; // sobrescreve o inode (inválido) no disco, com seus dados deletados

	return 1;
}

// função que retorna o tamanho lógico (em bytes) de um inode, caso este seja válido
// o tamanho é retornado apenas se o sistema de arquivos está montado, caso contrário o retorno é -1 (tamanho 0 é válido)
int INE5412_FS::fs_getsize(int inumber)
{
    fs_inode inode;
    
    if(inode_load(inumber, &inode)) // carrega o inode especificado
	{
		if(!inode.isvalid)
		{
			cout << "Erro: inode não é válido!\n";
			return -1;
		}
		return inode.size; // retorna o tamanho do mesmo, apenas se ele for válido
	}
	return -1;
}

// função que lê dados de tamanho length de um inode correspondente, a partir da posição offset nos seus blocos de dados
// é necessário que o sistema de arquivos esteja montado, irá retornar 0 em caso de qualquer erro, exceto no warning em que o disco/inode está cheio
int INE5412_FS::fs_read(int inumber, char *data, int length, int offset)
{
	if (is_mounted) 
    {
		if (!length) return 0;

		fs_inode inode;
		// Retorna erro se inumber é inválido ou se inode é inválido ou se o offset
		// está fora dos limites do arquivo
		if (!inode_load(inumber, &inode) || !inode.isvalid || offset >= inode.size) return 0;

		// Ajusta o tamanho para não ultrapassar os limites do arquivo
		int bytes_to_read = min(length, inode.size - offset);
		int bytes_read = 0;

		// Realiza a leitura bloco por bloco
		while (bytes_read < bytes_to_read) 
		{
			int current_block_index = (offset + bytes_read) / disk->DISK_BLOCK_SIZE; // Índice do bloco atual que precisa ser lido
			int block_offset = (offset + bytes_read) % disk->DISK_BLOCK_SIZE; // Deslocamento dentro do bloco

			// Determina o número do bloco físico (nunca cria um novo)
			int initial_number_block = get_number_block_data(inumber, &inode, current_block_index, false);
			if (!initial_number_block) return 0;

			// Lê o bloco do disco
			union fs_block block_data;
			disk->read(initial_number_block, block_data.data);

			// Calcula o número de bytes restantes para leitura no bloco atual
			int bytes_from_block = min(bytes_to_read - bytes_read, disk->DISK_BLOCK_SIZE - block_offset);

			// Copia os dados do bloco para o buffer (memcpy copia uma quantidade específica de bytes de uma área de memória para outra.)
			memcpy(data + bytes_read, block_data.data + block_offset, bytes_from_block);
			bytes_read += bytes_from_block; 
		}

		return bytes_read; // Retorna a quantidade de bytes efetivamente lidos
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função que escreve dados de tamanho length em um inode, a partir da posição offset nos seus blocos de dados
// é necessário que o sistema de arquivos esteja montado, irá retornar 0 em caso de qualquer erro, exceto no warning em que o disco/inode está cheio
int INE5412_FS::fs_write(int inumber, const char *data, int length, int offset)
{
	if (is_mounted) 
	{
		if (!length) return 0; //se a palavra a ser escrita tem tamanho 0, retorna erro

		fs_inode inode;
		if (!inode_load(inumber, &inode)) return 0; // tentativa de ler o inode com tal inumber (retorna erro se inumber inválido)

		int initial_byte = offset % disk->DISK_BLOCK_SIZE; // byte inicial a ser escrito, dentro do bloco
		int initial_index_block = offset / disk->DISK_BLOCK_SIZE; // bloco inicial a ser escrito
		int count_bytes_written = 0; // quantidade de bytes escritos
		int newsize = inode.size; // novo tamanho (inicia com o size original, e incrementa para cada novo byte escrito)

		if (initial_byte) // se há um byte inicial (i.e se a escrita em um determinado bloco não começa em 0)
		{
			int initial_number_block = get_number_block_data(inumber, &inode, initial_index_block, true); // retorna o número do bloco inicial (com o índice calculado), cria se não houver
			if (!initial_number_block) return 0;

			int written = write_data_block(initial_number_block, data, 0, initial_byte, &length, &newsize); // escreve o dado inicial no bloco inicial, atualizando length e newsize

			if (!written) return 0; // caso a escrita retorne 0, retorna erro interno

			// atualiza variáveis auxiliares
			count_bytes_written += written;
			initial_index_block++;
		}

		int number_write_blocks = (length + disk->DISK_BLOCK_SIZE - 1) / disk->DISK_BLOCK_SIZE; // cálculo do número de blocos escritos após o bloco inicial

		// escreve os dados para cada um dos blocos a serem escritos
		for (int write_block = initial_index_block; write_block < initial_index_block+number_write_blocks; write_block++)
		{
			int number_block = get_number_block_data(inumber, &inode, write_block, true); // retorna o número do bloco, cria se não existe
			if (!number_block) break;

			int written = write_data_block(number_block, data, count_bytes_written, 0, &length, &newsize); // escreve o dado no bloco especificado e atualizad length e newsize

			if (!written) // se write retornar 0, atualiza o size do que já foi escrito e retorna erro interno
			{
				inode.size = newsize;
				inode_save(inumber, &inode);
				return 0;
			}

			count_bytes_written += written;
		}

		// atualiza o size do inode e retorna o número de bytes escritos
		inode.size = newsize;
		inode_save(inumber, &inode);
		return count_bytes_written;
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que inicializa o bitmap com todos os blocos livres
void INE5412_FS::initialize_bitmap()
{
	vector_bitmap.assign(disk->size(), 0); // Inicializa todo o bitmap com 0
}

// função auxiliar que carrega um determinado inode do disco (inumber possui índice iniciando em 1)
// o inode é retornado apenas se o sistema de arquivos já está montado
int INE5412_FS::inode_load(int inumber, fs_inode *inode)
{
	if (is_mounted) 
	{
		inumber--; // no disco, o índice inicia em 0, portanto é necessário decrementar o inumber
		int ninode_block = 1 + (inumber/INODES_PER_BLOCK); // o número do inode block no qual o inode se encontra
		int index_inode = inumber%INODES_PER_BLOCK; // o índice do inode dentro do inode block (iniciando em 0)

		if (inumber < 0 || inumber > superblock.ninodes) 
		{
			cout << "Erro: inumber inválido!\n";
			return 0;
		}

		fs_block block;
		disk->read(ninode_block, block.data); // leitura do inode block
		*inode = block.inode[index_inode]; //carrega o inode do bloco de acordo com seu índice
		
		return 1;
	}
	
	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que salva um determinado inode do disco (inumber possui índice iniciando em 1)
// o inode é salvo apenas se o sistema de arquivos já está montado
int INE5412_FS::inode_save(int inumber, fs_inode *inode)
{
	if (is_mounted) 
	{
		inumber--; // no disco, o índice inicia em 0, portanto é necessário decrementar o inumber
		int ninode_block = 1 + (inumber/INODES_PER_BLOCK); // o número do inode block no qual o inode se encontra
		int index_inode = inumber%INODES_PER_BLOCK; // o índice do inode dentro do inode block (iniciando em 0)

		if (inumber < 0 || inumber > superblock.ninodes) 
		{
			cout << "Erro: inumber inválido!\n";
			return 0;
		}

		fs_block block;
		disk->read(ninode_block, block.data); //leitura do inode block onde inode será salvo
		block.inode[index_inode] = *inode; // salva o inode no bloco (de acordo com seu índice)
		disk->write(ninode_block, block.data); // faz a escrita do inode block no disco
		return 1;
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que deleta um determinado bloco do disco (sobrescrevendo-o com um bloco vazio), atualizando o bitmap como bloco livre
// o bloco só é deletado se o sistema de arquivos estiver montado
int INE5412_FS::delete_block(int number_block)
{
	if (is_mounted)
	{
		if (number_block >= 0 && number_block < disk->size()) // verificação se o número do bloco é válido
		{
			union fs_block empty = {}; // criação de bloco vazio
			disk->write(number_block, empty.data); // sobrescrita do bloco deletado no disco com o bloco vazio
			vector_bitmap[number_block] = 0; // atualização do bitmap como bloco livre
			return 1;
		}
		
		cout << "Erro: ponteiro de bloco inválido!";
		return 0;
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que escreve length bytes de data em um determinado bloco (com number_block), inicia a escrita de offset em data e de initial_byte_block no bloco
int INE5412_FS::write_data_block(int number_block, const char *data, int offset, int initial_byte_block, int *length, int *size)
{
	if (is_mounted)
	{
		union fs_block block;
		disk->read(number_block, block.data); // lê o bloco a ser escrito
		int count_bytes_written = 0;

		// para cada caractere do bloco, iniciando em inital_byte_block, o substitui pelo respectivo em data (considerando o offset)
		for (int ch = initial_byte_block; ch < disk->DISK_BLOCK_SIZE; ch++)
		{
			if (!block.data[ch]) *size = *size +1; // atualiza o size apenas se é um novo caractere escrito (sobrescrita não altera o tamanho)
			block.data[ch] = data[offset+ch];

			// atualiza length e número de bytes escritos
			count_bytes_written++;
			*length = *length - 1;
			if (!(*length)) break; // se length (de data) zerou, quer dizer que todos os dados foram escritos, então sai do for com break
		}
		disk->write(number_block, block.data); // faz efetivamente a escrita do bloco no disco
		return count_bytes_written;
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que encontra o primeiro bloco livre no bitmap e retorna seu número
int INE5412_FS::find_free_block()
{
	if (is_mounted)
	{
		// para cada bloco do disco, iniciando em 1 (visto que o superbloco nunca deve ser livre em um disco montado)
		for (int number_block = 1; number_block < disk->size(); number_block++)
		{
			if (!vector_bitmap[number_block]) return number_block; // retorna ao encontrar o primeiro bloco livre
		}
		return 0; // retorna 0 caso não encontre (disco cheio), note que 0 é o superbloco portanto não pode ser livre
	}

	cout << "Erro: sistema de arquivos não foi montado!\n";
	return 0;
}

// função auxiliar que retorna o número de determinado bloco de dados (dado pelo índice) de um inode
// se create for true, cria um novo bloco caso este não exista (inclusive, criando o bloco indireto se necessário)
int INE5412_FS::get_number_block_data(int inumber, fs_inode *inode, int index_block, bool create = false)
{
	// caso o índice do bloco esteja entre os blocos diretos
	if (index_block < POINTERS_PER_INODE && index_block >= 0)
	{
		int direct_block_number = inode->direct[index_block]; // pega o número do bloco no vetor de diretos do inode
		if(direct_block_number || !create) return direct_block_number; // se o número não for zero, ou se o create não estiver habilitado retorna o número do bloco

		// caso o create esteja habilitado, é criado um novo bloco para esse bloco direto
		direct_block_number = find_free_block();
		if (direct_block_number)
		{
			inode->direct[index_block] = direct_block_number;
			vector_bitmap[direct_block_number] = 1; // marca tal bloco como ocupado no bitmap
			inode_save(inumber, inode); // atualiza o inode
			return direct_block_number;
		}
		return 0; // retorna 0 caso o não haja blocos livres no disco
	}

	// caso o índice do bloco esteja dentro do bloco indireto
	if (index_block >= POINTERS_PER_INODE && index_block < 	POINTERS_PER_INODE + POINTERS_PER_BLOCK)
	{
		// se não houver indireto para este inode
		if (!inode->indirect)
		{
			if (!create) return 0; // create não habilitado, então 0 é retornado

			// create habilitado então cria um novo bloco para o indireto
			int new_indirect_block = find_free_block();
			if (!new_indirect_block) return 0;

			inode->indirect = new_indirect_block; // indireto do inode é setado de acordo com novo bloco criado
			vector_bitmap[new_indirect_block] = 1; // indireto é colocado como ocupado no bitmap
		}

		union fs_block indirect_block;
		disk->read(inode->indirect, indirect_block.data); // bloco indireto do inode é lido
		int indirect_block_number = indirect_block.pointers[index_block - POINTERS_PER_INODE];
		if (indirect_block_number || !create) return indirect_block_number; // retorna o bloco do referido índice dentro de indireto, caso seja diferente de 0 ou create não habilitado

		// se o número do bloco (no índice especificado) no bloco indireto do inode for 0, e create estar habilitado, ele deve ser criado
		indirect_block_number = find_free_block();
		if (indirect_block_number)
		{
			indirect_block.pointers[index_block - POINTERS_PER_INODE] = indirect_block_number; // bloco indireto atualizado com o novo bloco
			vector_bitmap[indirect_block_number] = 1;
			inode_save(inumber, inode); // inode salvo
			disk->write(inode->indirect, indirect_block.data); // bloco indireto salvo
			return indirect_block_number;
		}
	}
	return 0; // caso não haja bloco livre no disco ou caso o inode esteja complemetamente cheio, retorna 0
}

// Retorna uma lista com os números dos inodes válidos no sistema de arquivos
vector<int> INE5412_FS::fs_list_inumbers()
{
    std::vector<int> inumbers;

    if (!is_mounted) 
    {
        std::cout << "Erro: sistema de arquivos não está montado!\n";
        return inumbers;
    }

	// Itera sobre todos os inodes disponíveis no superbloco
    for (int inumber = 1; inumber <= superblock.ninodes; inumber++) 
    {
        fs_inode inode;
		// Carrega o inode correspondente, verifica se é válido e adiciona o inumber na lista
        if (inode_load(inumber, &inode) && inode.isvalid) 
            inumbers.push_back(inumber);
    }

    return inumbers;
}

// Retorna um ponteiro para o objeto Disk associado ao sistema de arquivos
Disk* INE5412_FS::get_disk()
{
	return disk;
}

// Retorna uma string formatada contendo os ponteiros dos blocos diretos de um inode
string INE5412_FS::get_direct_blocks(fs_inode *inode)
{
	string format_blocks = "";
	for (int bloco_direto = 0; bloco_direto < POINTERS_PER_INODE; bloco_direto++) // percorre os blocos diretos do inode atual
	{
		int pointer = inode->direct[bloco_direto];
		// informações sobre os blocos diretos
		if (pointer)
			format_blocks.append(to_string(pointer)).append(" ");
	}

	return format_blocks;
}

// Retorna uma string formatada contendo os ponteiros dos blocos indiretos de um inode
string INE5412_FS::get_indirect_blocks(fs_inode *inode)
{
	string format_blocks = "";
	if (inode->indirect) // verifica se há um bloco indireto válido
	{
		union fs_block indirect_block;
		disk->read(inode->indirect, indirect_block.data);

		// percorre os ponteiros do bloco indireto (aponta para blocos de dados também)
		for (int indirect_pointer = 0; indirect_pointer < POINTERS_PER_BLOCK; indirect_pointer++)
		{
			int pointer = indirect_block.pointers[indirect_pointer];
			if (pointer) 
				format_blocks.append(to_string(pointer)).append(" ");
		}
	}

	return format_blocks;
}