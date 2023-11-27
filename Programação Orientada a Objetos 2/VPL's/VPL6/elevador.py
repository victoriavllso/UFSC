from abstractElevador import AbstractElevador
from elevadorCheioException import ElevadorCheioException
from elevadorJahNoTerreoException import ElevadorJahNoTerreoException
from elevadorJahNoUltimoAndarException import ElevadorJahNoUltimoAndarException
from elevadorJahVazioException import ElevadorJahVazioException

class Elevador(AbstractElevador):
    def __init__(self, capacidade, totalPessoas,totalAndaresPredio,andarAtual):
        super().__init__()
        self.__capacidade = capacidade
        self.__totalPessoas = totalPessoas
        self.__totalAndaresPredio = totalAndaresPredio
        self.__andarAtual = andarAtual

    # ElevadorJahNoTerreoException
    def descer(self) -> str:
        if self.andarAtual>0:
            self.andarAtual -=1
        else:
            raise ElevadorJahNoTerreoException

    # ElevadorCheioException
    def entraPessoa(self) -> str:
        if self.totalPessoas < self.capacidade:
            self.totalPessoas +=1
        else:
            raise ElevadorCheioException

    # ElevadorJahVazioException
    def saiPessoa(self) -> str:
        if self.totalPessoas > 0:
            self.totalPessoas -=1
        else:
            raise ElevadorJahVazioException

    # ElevadorJahNoUltimoAndarException
    def subir(self) -> str:
        if self.andarAtual < self.totalAndaresPredio-1:
            self.andarAtual +=1
        else:
            raise ElevadorJahNoUltimoAndarException
    

    @property
    def capacidade(self) -> int:
        return self.__capacidade
        
    @capacidade.setter
    def capacidade(self,capacidade):
        self.__capacidade = capacidade

    @property
    def totalPessoas(self) -> int:
        return self.__totalPessoas
        
    @totalPessoas.setter
    def totalPessoas(self,totalPessoas):
        self.__totalPessoas = totalPessoas

    @property
    def totalAndaresPredio(self) -> int:
        return self.__totalAndaresPredio
        
    @totalAndaresPredio.setter
    def totalAndaresPredio(self, totalAndaresPredio):
        self.__totalAndaresPredio = totalAndaresPredio

    @property
    def andarAtual(self) -> int:
        return self.__andarAtual
        
    @andarAtual.setter
    def andarAtual(self,andarAtual):
        self.__andarAtual = andarAtual

    @totalAndaresPredio.setter
    def totalAndaresPredio(self, totalAndaresPredio: int):
        self.__totalAndaresPredio = totalAndaresPredio
