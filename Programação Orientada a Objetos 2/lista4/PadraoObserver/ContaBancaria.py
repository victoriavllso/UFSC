class ContaBancaria:
    def __init__(self, saldo_atual):
        self.__saldo_atual = saldo_atual
        self.__observadores = []

    @property
    def observadores(self):
        return self.__observadores
    
    @observadores.setter
    def observadores(self, observadores):
        self.__observadores = observadores


    @property
    def saldo_atual(self):
        return self.__saldo_atual
    
    @saldo_atual.setter
    def saldo_atual(self, saldo_atual):
        self.__saldo_atual = saldo_atual

    def obter_saldo(self):
        return self.saldo_atual
    
    def adicionar_observador(self, banco):
        self.observadores.append(banco)

    def remove_observador(self,banco):
        self.observadores.pop(banco)

    def notifica_observadores(self, pix):
        for observer in self.observadores:
            observer.notifica(pix)