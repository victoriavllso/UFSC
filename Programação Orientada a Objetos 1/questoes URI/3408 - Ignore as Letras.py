n = int(input())
soma = 0
for i in range(n):
    valor = input().strip() #le o valor e remove o branco
    alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    for i in alfabeto: #remove as letras do alfabeto
        valor = valor.replace(i,'')
    soma = soma + int(valor)
print(soma)
