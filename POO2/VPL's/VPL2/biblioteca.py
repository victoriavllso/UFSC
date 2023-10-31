from livro import Livro


class Biblioteca:
    def __init__(self):
        self.__livros = []

    @property
    def livros(self):
        return self.__livros
    
    

    def incluirLivro(self, livro: Livro):
        ...
        if isinstance(livro, Livro): #garante que o objeto recebido pertence a classe livro
            if livro is not None:
                if livro not in self.livros:
                    self.livros.append(livro)
                else:
                    print("Livro já está na biblioteca")
            else:
                print("Livro nulo")

    def excluirLivro(self, livro: Livro):
        if isinstance(livro, Livro):
            if livro in self.livros:
                self.livros.remove(livro)
            else:
                print("Esse livro não pertence a biblioteca")

