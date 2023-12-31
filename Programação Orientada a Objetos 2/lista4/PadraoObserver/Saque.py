from lista4.PadraoObserver.Transacao import Transacao

class Saque(Transacao):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        super().__init__(conta_origem, conta_destino, valor_transacao)

    def processamento(self):
        if self.conta_origem.saldo_atual >= self.valor_transacao:
            self.conta_origem.saldo_atual -= self.valor_transacao
            return self.valor_transacao

        else:
            print('Saldo insuficiente para saque')
