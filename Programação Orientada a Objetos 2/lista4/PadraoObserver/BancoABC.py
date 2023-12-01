from abc import ABC, abstractmethod

class BancoABC(ABC):
    def __init__(self, nome_banco) -> None:
        super().__init__()
        self.__nome_banco = nome_banco

    
    @property
    def nome_banco(self):
        return self.__nome_banco

        
    @abstractmethod
    def notifica(self):
        pass