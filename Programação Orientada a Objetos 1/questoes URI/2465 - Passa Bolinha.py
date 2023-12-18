n = int(input())
x, y = map(int, input().split())
x -= 1  # ajustando o índice
y -= 1
q = [(x,y)]
visitado = [0]*n
contador = 1
mat = [0] * n
for i in range(n):
    mat[i] = input().split()
    visitado[i] = [False]*n
    for j in range(n):
        mat[i][j] = int(mat[i][j])
        visitado[i][j] = False
visitado[x][y] = True #marco verdadeiro para a posição inicial, para que ela não seja contada novamente

while q !=[]:
    casa = q.pop(0) #removo o indice da lista q e adiciono em casa(a lista só tem os indices i,j não vai ter mais de um par)
    x = casa[0]
    y = casa[1]
    

    # vizinho da coluna direita
    if y + 1 < n and mat[x][y + 1] >= mat[x][y] and not visitado[x][y + 1]:
        q.append((x, y + 1))
        visitado[x][y + 1] = True
        contador = contador + 1

    # vizinho da coluna esquerda
    if y - 1 >= 0 and mat[x][y - 1] >= mat[x][y] and not visitado[x][y - 1]:
        q.append((x, y - 1))
        visitado[x][y - 1] = True
        contador = contador + 1

    # vizinho da linha acima
    if x - 1 >= 0 and mat[x - 1][y] >= mat[x][y] and not visitado[x - 1][y]:
        q.append((x - 1, y))
        visitado[x - 1][y] = True
        contador = contador + 1

    # vizinho da linha abaixo:
    if x + 1 < n and mat[x + 1][y] >= mat[x][y] and not visitado[x + 1][y]:
        q.append((x + 1, y))
        visitado[x + 1][y] = True
        contador = contador + 1

print(contador)
