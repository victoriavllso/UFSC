from lista4.Questão4.ContaBancaria import ContaBancaria
from lista4.Questão4.Pix import Pix
from lista4.Questão4.Saque import Saque
from lista4.Questão4.Transacao import Transacao


# Exemplo de uso:
conta1 = ContaBancaria(5000)
conta2 = ContaBancaria(100)

pix = Pix(conta1, conta2, 500)
pix.processamento()

print(f'Saldo da conta1: {conta1.obter_saldo()}')
print(f"Saldo da conta2: {conta2.obter_saldo()}")

saque = Saque(conta1, conta1, 2000)
valor = saque.processamento()
saldo = conta1.obter_saldo()

print(f'Saque de R${valor} efetuado com sucesso, saldo da conta R${saldo}')