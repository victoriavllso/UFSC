while True:
    ordem = int(input())
    if ordem == 0:
        break
    mat = [] #inicio a matriz com zeros
    for i in range(ordem):
        linha = []
        for j in range(ordem):
            linha.append(0)
        mat.append(linha)

    for i in range(ordem):
        for j in range(ordem):
            mat[i][j] = pow(2, (i+j))

    maxdigito = len(str(mat[ordem-1][ordem-1])) #converto para string, pois numero inteiro não tem tamanho

    for i in range(ordem):
        for j in range(ordem):
            valor = mat[i][j]
            saida = "{:>{}}".format(valor, maxdigito)
            if j == ordem-1: #se for o ultimo elemento da coluna
                end = '' #não tem espaço em branco dps
            else:
                end = ' '
            print(saida, end=end)
        print()
    print()

