from Amigo import Amigo
from Livro import Livro


class Emprestimo():
    def __init__(self, amigo: Amigo, livro: Livro, data_inicio):
        self.__amigo = amigo
        self.__livro = livro
        self.__data_inicio = data_inicio
        self.__data_fim = None
        self.__observacao = None

    def __str__(self) -> str:
        return f"{self.livro.titulo}"

    @property
    def amigo(self):
        return self.__amigo
    
    @amigo.setter
    def amigo(self, amigo):
        self.__amigo = amigo

    @property
    def livro(self):
        return self.__livro
    
    @livro.setter
    def livro(self,livro):
        self.__livro = livro

    @property
    def data_inicio(self): 
        return self.__data_inicio
    
    @data_inicio.setter
    def data_inicio(self, data_inicio):
        self.__data_inicio = data_inicio

    @property
    def data_fim(self): 
        return self.__data_fim
    
    @data_fim.setter
    def data_fim(self, data_fim):
        self.__data_inicio = data_fim  


    @property
    def observacao(self):
        return self.__observacao

    @observacao.setter
    def observacao(self, observacao):
        self.__observacao = observacao

    def ativo(self):
        ativo = True
        return ativo
