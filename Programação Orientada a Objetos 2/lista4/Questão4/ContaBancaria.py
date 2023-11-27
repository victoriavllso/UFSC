class ContaBancaria:
    def __init__(self, saldo_atual):
        self.__saldo_atual = saldo_atual


    @property
    def saldo_atual(self):
        return self.__saldo_atual
    
    @saldo_atual.setter
    def saldo_atual(self, saldo_atual):
        self.__saldo_atual = saldo_atual


    def obter_saldo(self):
        return self.saldo_atual