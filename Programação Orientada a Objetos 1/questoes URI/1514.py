MAXN = 110
problemas_resolvidos = [0] * MAXN

while True:
    n, m = input().split()
    n, m = int(n), int(m)
    if n == 0 and m == 0:
        break

    matriz = []
    for i in range(n):
        linha = [int(x) for x in input().split()]
        matriz.append(linha)

    for i in range(m):
        problemas_resolvidos[i] = 0

    condicao1 = condicao2 = condicao3 = condicao4 = 1

    for i in range(n):
        resolvidos = 0 #contador
        for j in range(m):
            if matriz[i][j]: #se for diferente de zero (se for true)
                resolvidos += 1
                problemas_resolvidos[j] += 1
        if resolvidos == 0:
            condicao4 = 0
        if resolvidos == m:
            condicao1 = 0

    for i in range(m):
        if problemas_resolvidos[i] == n:
            condicao3 = 0
        if problemas_resolvidos[i] == 0:
            condicao2 = 0

    print(condicao1 + condicao2 + condicao3 + condicao4)
