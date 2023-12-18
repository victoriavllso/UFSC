operacao = input()
soma = 0
qtd = (144-12)/2
mat = [None]*12 #cria a matriz
for i in range(0, 12):
    mat[i] = [None]*12 #para cada linha, eu crio 12 colunas

for i in range(12): # loop para preencher a matriz
    for j in range(12):
        mat[i][j] = float(input()) 
        
u = 11    #coloco 11 pois preciso que o range das colunas vá de 0 a 10    
for i in range(0, 12): 
    for j in range(0,u): 
        soma += mat[i][j] 
    u-=1
if operacao == 'S':
    print(soma)
if operacao == 'M':
    print("%.1f"%(soma/qtd))
    
