'''Neste exercicio criei duas classes, em que uma delas tem como objetivo realizar o cadastro do livro e a outra realizar pesquisas nos livros cadastrados.
Dentro da classe de pesquisa, também adicionei um método para editar alguma informção, caso o usuário perceba que algum dado está incorreto'''

class Cadastro():
    def __init__(self, titulo: str, autor: str, ano: int, editora: str, edicao: int, volume: int):
        self.titulo = titulo
        self.autor = autor
        self.ano = ano
        self.editora = editora
        self.edicao = edicao
        self.volume = volume

    def __str__(self):
        return f"titulo: {self.titulo}\nAutor: {self.autor}\nAno: {self.ano}\nEditora: {self.editora}\nEdição: {self.edicao}\nVolume: {self.volume}\n"


class Pesquisa():
    def __init__(self):
        self.dic = {}

    def procura(self):
        informacao = input("Digite o título ou o autor do livro que deseja procurar: ")
        for chave, livro in self.dic.items():
            if informacao.lower() in livro.titulo.lower() or informacao.lower() in livro.autor.lower():
                return str(livro)
        else:
            return "Livro não encontrado"
       
    def editar_informacao(self):
        titulo = input("Digite o título do livro que deseja editar: ")
        livro_encontrado = False
        for chave in self.dic:
            if titulo.lower() in chave.lower():
                informacao = input("Qual informação você deseja editar ?: ")
                for chave, valor in self.dic.items():
                    novo_valor = input(f"Novo {informacao}: ")
                    setattr(self.dic[chave], informacao, novo_valor)
                    print("\nInformação atualizada. Aqui estão os dados: \n")
                    print(str(self.dic[chave]))
                    break
            if livro_encontrado:
                print("Livro não encontrado")

while True:

    n = int(input("Digite 1 para prosseguir ou 0 para encerrar o programa: "))

    if n == 0:
        break
    else:

        ### adicionando livros no cadastro
        livro1 = Cadastro("Dom casmurro", "Machado de Asis", 1899, "Camara", 1, 0)
        livro2 = Cadastro("Ponto de impacto", "Dan Brown", 2010, 'UFSC', 3, 1)

        #fazendo pesquisa e editando dados sobre esses livros

        pesquisa = Pesquisa()

        pesquisa.dic[livro1.titulo] = livro1 #adicionando o livro na instancia da classe pesquisa (livro1.titulo é a chave)
        pesquisa.dic[livro2.titulo] = livro2

    
        resultado_pesquisa = pesquisa.procura()

        print(resultado_pesquisa)

        pesquisa.editar_informacao()
