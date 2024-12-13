n = int(input())
dic = {}
for i in range(n):
    entrada = input().split()
    
    dic[entrada[0]] = [int(entrada[1]), int(entrada[2]), int(entrada[3])]
    


# Ordenação dos países
ordenado = sorted(
    dic.items(),
    key=lambda item: (-item[1][0], -item[1][1], -item[1][2], item[0])
)

# Conversão de volta para dicionário
# medalhas_ordenadas = dict(ordenado)

# Exibindo o resultado
for pais, medalhas in ordenado:
    print(f"{pais} {medalhas[0]} {medalhas[1]} {medalhas[2]}")