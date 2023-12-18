operacao = input()
soma = 0
qtd = (144-12)/2
mat = [None]*12 #cria a matriz
for i in range(0, 12):
    mat[i] = [None]*12 #para cada linha, eu crio 12 colunas

for i in range(12): # loop para preencher a matriz
    for j in range(12):
        mat[i][j] = float(input()) 

for i in range(1, 12): #começo na linha 1 e vou até 11
    for j in range(0,i): #começo na coluna 0 e vou até i-1
        soma += mat[i][j] #soma dos elementos abaixo da diagonal

if operacao == 'S':
    print(soma)
if operacao == 'M':
    print("%.1f"%(soma/qtd))
