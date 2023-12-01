from lista4.PadraoObserver.BancoABC import BancoABC

class Banco(BancoABC):
    def __init__(self, nome_banco) -> None:
        super().__init__(nome_banco)

    def notifica(self, pix):
        if pix.pagamento_efetuado:
            print(f'Pix no valor de R${pix.valor_transacao} efetuado com sucesso')
        else:
            print('Falha no pagamento')
        