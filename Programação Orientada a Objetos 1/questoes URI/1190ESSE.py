operacao = input()
mat = []  #crio a matriz
for i in range(12):
    linha = []
    for j in range(12):
        linha.append(float(input())) #uma entrada de dados por linha
    mat.append(linha)
c1 = 11
c2 = 7
soma = 0

for i in range(1,11):
    if i<=5: #pego o triangulo superior
        for j in range(c1,12):
            soma += mat[i][j]
        c1 -=1
    else: #pego o triangulo inferior
        for j in range(c2,12):
            soma += mat[i][j]
        c2+=1
        
if operacao == 'S':
    print("%.1f"%(soma))
if operacao == 'M':
    print("%.1f"%(soma/30))
