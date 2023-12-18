while True:
    try:
        linha, coluna = input().split()
        linha, coluna = int(linha), int(coluna)
        mat = []
        contador = 0

        for i in range(linha): #crio e preencho a matriz
            l = []
            valores = input().split()
            for j in range(coluna):
                l.append(int(valores[j]))
            mat.append(l)

        for i in range(linha):
            for j in range(coluna):
                if mat[i][j] == 1:
                    print(9, end="")
                else:
                    contador = 0
                    if j+1 < coluna and mat[i][j+1] == 1: #na mesma linha, mmas coluna da direita
                        contador +=1
                    if j-1 >= 0 and mat[i][j-1] == 1: #mesma linha, mas coluna da esquerda
                        contador +=1
                    if i+1 < linha and mat[i+1][j] == 1: #mesma coluna, mas linha abaixo
                        contador +=1
                    if i-1 >= 0 and mat[i-1][j] == 1: #mesma coluna, mas linha acima25
                        contador += 1
                    print(contador, end="")
            
            print()
    except EOFError:
        break


