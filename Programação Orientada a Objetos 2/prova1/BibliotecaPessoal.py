from Amigo import Amigo
from Livro import Livro
from Emprestimo import Emprestimo



class BibliotecaPessoal(): 
    def __init__(self) -> None: 
        self.__amigos = []
        self.__livros = []
        self.__emprestimos = []


    @property
    def amigos(self):
        return self.__amigos
    
    @amigos.setter
    def amigos(self,amigos):
        self.__amigos = amigos

    @property
    def livros(self):
        return self.__livros
    
    @livros.setter
    def livros(self, livros):
        self.__livros = livros

    @property
    def emprestimos(self):
        return self.__emprestimos
    
    @emprestimos.setter
    def emprestimos(self, emprestimos):
        self.__emprestimos = emprestimos

    
    def adiciona_amigo(self, amigo):
        if isinstance(amigo, Amigo):
            self.amigos.append(amigo)
        return self.amigos
    
    def adiciona_livro(self,livro):
        if isinstance(livro, Livro):
            self.livros.append(livro)
        return self.livros
    
    def empresta_livro(self, amigo: Amigo, livro: Livro, data):
        for emp in self.emprestimos:
            if emp.livro == livro and emp.ativo():
                print('livro já emprestado')
        emprestimo = Emprestimo(amigo, livro, data)
        self.emprestimos.append(emprestimo)
        return self.emprestimos

    def ver_livros_emprestados(self):
        for emprestimo in self.emprestimos:
            print(f"O livro emprestado foi {emprestimo.livro.titulo} para {emprestimo.amigo.nome}")
    
    def devolve_livro(self, livro: Livro):
        if isinstance(livro, Livro):
            for emp in self.emprestimos:
                if emp.livro == livro and emp.ativo(): #compara o livro associado ao objeto emp com o livro passado como argumento
                    emp.ativo = False
                    self.emprestimos.remove(emp)
                    print(f"o livro devolvido foi {emp.livro.titulo} por {emp.amigo.nome}")
                    break
        

