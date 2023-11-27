from lista4.Questão4.Transacao import Transacao

class Pix(Transacao):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        super().__init__(conta_origem, conta_destino, valor_transacao)
    
    def processamento(self):
        if self.conta_origem.saldo_atual >= self.valor_transacao:
            self.conta_origem.saldo_atual -= self.valor_transacao
            self.conta_destino.saldo_atual += self.valor_transacao
        else:
            print('Saldo insuficiente para realizar o pix')
      

      
