dias, saldo = input().split()
dias, saldo = int(dias), int(saldo)
menorsaldo = saldo #o saldo atual vira o menor
for i in range (dias):
    valor = int(input())
    saldo = saldo + valor #vai ficar somando o valor inserido com o saldo atual
    if saldo<menorsaldo: #guarda o menor saldo após as somas
        menorsaldo = saldo
print(menorsaldo)
