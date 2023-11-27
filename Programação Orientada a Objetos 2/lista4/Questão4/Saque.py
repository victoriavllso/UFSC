from lista4.Questão4.Transacao import Transacao

class Saque(Transacao):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        super().__init__(conta_origem, conta_destino, valor_transacao)

    def processamento(self):
        self.conta_origem -= self.valor_transacao
        return self.conta_origem