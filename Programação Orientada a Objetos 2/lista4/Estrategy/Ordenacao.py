from abc import ABC, abstractmethod

class Ordenacao(ABC):
    def __init__(self, vetor: []):
        self.__vetor = vetor

    @property
    def vetor(self):
        return self.__vetor
    
    @vetor.setter
    def vetor(self, vetor):
        self.__vetor = vetor

    @abstractmethod
    def ordenar(self):
        pass