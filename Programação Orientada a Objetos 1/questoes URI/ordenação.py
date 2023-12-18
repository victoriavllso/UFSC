# Entrada
n = int(input())
for i in range(n):
    conjunto = input().split()

    # Classifica as strings pelo seu tamanho
    conjunto_ordenado = sorted(conjunto, key=len, reverse = True)

    # Imprime o conjunto ordenado
    print(' '.join(conjunto_ordenado))
