jogadores, partidas = input().split()
jogadores, partidas = int(jogadores), int(partidas)

mat = []
for i in range(jogadores):
    linha = []
    valores = input().split() #mais de uma entrada de dados por linha
    for j in range(partidas):
        linha.append(int(valores[j]))
    mat.append(linha)

gol = 0
for i in range(jogadores): #para cada jogador(linha)
    if all(mat[i]): #se todas as posições da linha i forem igual a 1, somo 1 no contador
        gol += 1

print(gol)

