from lista4.Questão4.Transacao import Transacao
from lista4.Questão4.ContaBancoA import ContaBancoA
from lista4.Questão4.ContaBancoB import ContaBancoB

class Pix(Transacao):
    def __init__(self, conta_origem, conta_destino, valor_transacao):
        super().__init__(conta_origem, conta_destino, valor_transacao)

    def processamento(self, conta_origem):
        if isinstance(conta_origem, ContaBancoB):
            self.conta_origem.saldo_atual -= self.valor_transacao
            self.conta_destino.saldo_atual += self.valor_transacao
