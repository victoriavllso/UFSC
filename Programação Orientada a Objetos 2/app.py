from lista4.Questão4.ContaBancoA import ContaBancoA
from lista4.Questão4.ContaBancoB import ContaBancoB
from lista4.Questão4.Pix import Pix
from lista4.Questão4.Saque import Saque


ContaA = ContaBancoA(2000)
ContaB = ContaBancoB(2000)

pix = Pix(ContaB, ContaA, 200)

saldoa = ContaA.saldo_atual
saldob = ContaB.saldo_atual
print(saldoa)
print(saldob)

cccc