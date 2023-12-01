from lista4.PadraoObserver.ContaBancaria import ContaBancaria
from lista4.PadraoObserver.Pix import Pix
from lista4.PadraoObserver.Saque import Saque
from lista4.PadraoObserver.Transacao import Transacao
from lista4.PadraoObserver.Banco import Banco



conta1 = ContaBancaria(5000)
conta2 = ContaBancaria(100)

banco1 = Banco("banco inter")
pix = Pix(conta1, conta2, 500)
pix.processamento()

conta1.adicionar_observador(banco1)
conta1.notifica_observadores(pix)

print("\n=====teste de processamento dos pagamentos com pix =======\n")

print(f'Saldo da conta1: {conta1.obter_saldo()}')
print(f"Saldo da conta2: {conta2.obter_saldo()}")

print("\n=====teste de processamento do saque =======\n")


saque = Saque(conta1, conta1, 2000)
valor = saque.processamento()
saldo = conta1.obter_saldo()

print(f'Saque de R${valor} efetuado com sucesso, saldo da conta após o saque: R${saldo}')