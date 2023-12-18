def contar_sequencias(n):
    # Caso base: caminho com 1 lajota
    if n == 1:
        return 1

    # Inicialização dos valores para os casos base
    dp = [0] * (n + 1)
    dp[1] = 1
    dp[2] = 2

    # Preenchimento da tabela utilizando programação dinâmica
    for i in range(3, n + 1):
        dp[i] = dp[i - 1] + dp[i - 2]

    return dp[n]

while True:
    n = int(input())
    if n == 0:
        break

    num_sequencias = contar_sequencias(n)
    print(num_sequencias)
