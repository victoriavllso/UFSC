#ifndef FS_H
#define FS_H

#include "disk.h"
#include <vector>

class INE5412_FS
{
public:
    static const unsigned int FS_MAGIC = 0xf0f03410;
    static const unsigned short int INODES_PER_BLOCK = 128;
    static const unsigned short int POINTERS_PER_INODE = 5;
    static const unsigned short int POINTERS_PER_BLOCK = 1024;

    class fs_superblock {
        public:
            unsigned int magic;
            int nblocks; //numero de blocos no disco
            int ninodeblocks; //numero de blocos para armazenar inodes
            int ninodes; //numero de inodes nos blocos inodeblocks
    }; 

    class fs_inode {
        public:
            int isvalid;
            int size;
            int direct[POINTERS_PER_INODE];
            int indirect;
    };

    union fs_block {
        public:
            fs_superblock super;
            fs_inode inode[INODES_PER_BLOCK];
            int pointers[POINTERS_PER_BLOCK];
            char data[Disk::DISK_BLOCK_SIZE];
    };

public:

    INE5412_FS(Disk *d) {
        disk = d;
        is_mounted = false;
    } 

    void fs_debug();
    int  fs_format();
    int  fs_mount();

    int  fs_create();
    int  fs_delete(int inumber);
    int  fs_getsize(int inumber);

    int  fs_read(int inumber, char *data, int length, int offset);
    int  fs_write(int inumber, const char *data, int length, int offset);

    void initialize_bitmap(); // inicializa o bitmap, indicando todos os blocos como 0
    int inode_load(int inumber, fs_inode *inode); // lê os dados de um inode (índice inciando em 1) no disco
    int inode_save(int inumber, fs_inode *inode); // (sobr)escreve um inode (índice inciando em 1) no disco
    int delete_block(int number_block); // deleta um bloco do disco (dados são zerados e o bitmap atualizado)
    int write_data_block(int number_block, const char *data, int offset, int initial_byte_block, int *length, int *size); // escreve dados em um determinado bloco, iniciando de offset nos dados e iniciano de initial_byte_block no bloco, atualiza length e size
    int find_free_block(); // encontra um bloco livre no bitmap e retorna seu número (não seta como ocupado neste momento)
    int get_number_block_data(int inumber, fs_inode *inode, int index_block, bool create); // retorna o número do bloco de dados (direto ou dentro de indireto) de determinado índice de um inode (iniciando em 0), caso não exista e create for verdadeiro, cria o bloco (inclusive o indireto)
    vector<int> fs_list_inumbers(); // retorna uma lista com os inumbers de inodes válidos
    Disk* get_disk(); // retorna um ponteiro para o objeto Disk associado ao sistema de arquivos
    string get_direct_blocks(fs_inode *inode); // retorna uma string contendo os ponteiros dos blocos diretos de um inode
    string get_indirect_blocks(fs_inode *inode); // retorna uma string contendo os ponteiros dos blocos indiretos de um inode

private:
    Disk *disk;
    bool is_mounted; // indica se o sistema de arquivos foi montado, i.e. se as estruturas abaixo foram inicializadas
    std::vector <int> vector_bitmap; // bitmap que indica para cada um dos blocos se ele está livre (0) ou ocupado (1)
    fs_superblock superblock; // informações sobre os blocos e inodes do disco
};

#endif