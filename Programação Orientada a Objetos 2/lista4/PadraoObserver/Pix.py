from lista4.PadraoObserver.Transacao import Transacao

class Pix(Transacao):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        super().__init__(conta_origem, conta_destino, valor_transacao)
        self.__pagamento_efetuado = False

    @property
    def pagamento_efetuado(self):
        return self.__pagamento_efetuado
    
    @pagamento_efetuado.setter
    def pagamento_efetuado(self,pagamento_efetuado):
        self.__pagamento_efetuado = pagamento_efetuado

    
    def processamento(self):
        if self.conta_origem.saldo_atual >= self.valor_transacao:
            self.conta_origem.saldo_atual -= self.valor_transacao
            self.conta_destino.saldo_atual += self.valor_transacao
            self.__pagamento_efetuado = True
            return self.__pagamento_efetuado
        else:
            print('Saldo insuficiente para realizar o pix')
      

      
