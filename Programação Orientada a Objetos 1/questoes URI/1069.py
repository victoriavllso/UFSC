n = int(input())

for _ in range(n):
    diamante = input().strip()
    cont = 0
    aux = []

    for char in diamante:
        if char == '<':
            aux.append(char)
        elif char == '>':
            if len(aux) > 0:  # Verifica se há um '<' para formar um diamante
                aux.pop()     # Remove o último '<' da lista auxiliar
                cont += 1     # Incrementa a contagem de diamantes
    
    print(cont)