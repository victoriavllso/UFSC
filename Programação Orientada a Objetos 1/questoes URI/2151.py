n = int(input())
for c in range(1, n+1):
    linha, coluna, x, y = input().split()
    linha, coluna, x, y = int(linha), int(coluna), int(x), int(y)
    x= x-1
    y = y-1 #coloco -1 para já ajustar o indice i da matriz
    mat = []
    for i in range(linha): #crio a matriz
        linhamat = []
        valores = input().split()
        for j in range(coluna):
            linhamat.append(int(valores[j]))
        mat.append(linhamat)
    
    for i in range(linha): #substituo os valores da matriz, pelos novos valores (equivalente ao valor da força)
        for j in range(coluna):
            distanciaIJXY = max(abs(i-x),abs(j-y)) #Calculo a maior distância em relação ao ponto onde foi dado o soco do Hulk
            if distanciaIJXY > 8: #Se a distância for maior que 8, apenas aumento o valor da casa em 1
                mat[i][j] += 1
            else: #Caso contrário, somo a diferença entre a força máxima so soco (10) e a distância da casa atual
                mat[i][j] += 10 - distanciaIJXY 
    

    print("Parede %d:" % (c))
    for i in range(linha):
        print("%d" % (mat[i][0]), end='') #imprimo o primeiro elemento sem espaço antes e sem espaço depois
        for j in range(1,coluna):
            print(" %d" % (mat[i][j]), end='')
