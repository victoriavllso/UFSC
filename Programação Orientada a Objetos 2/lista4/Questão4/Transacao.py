from abc import ABC, abstractmethod

class Transacao(ABC):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        self.__valor_transacao = valor_transacao
        self.__conta_origem = conta_origem #referencia a instancia da conta bancária
        self.__conta_destino = conta_destino

    @property
    def conta_destino(self):
        return self.__conta_destino
    
    @conta_destino.setter
    def conta_destino(self, conta_destino):
        self.__conta_destino = conta_destino

    @property
    def conta_origem(self):
        return self.__conta_origem
    
    @conta_origem.setter
    def conta_origem(self, conta_origem):
        self.__conta_origem = conta_origem

    @property
    def valor_transacao(self):
        return self.__valor_transacao
    
    @valor_transacao.setter
    def valor_transacao(self, valor_transacao):
        self.__valor_transacao = valor_transacao

    @abstractmethod
    def processamento(self):
        pass

