# inicialmente devo descobrir todas as casas com T e armazenar as coordenadas delas (i,j) em uma lista. Depois, enquanto houverem casas com T nessa lista, devo marcar
#todas as casas com A em sua vizinhança (os 4 vizinhos de sempre) agora com o símbolo T e armazenar essas novas casas com T também nessa lista. Eu repito
#esse procedimento enquanto que essa lista contiver algum elemento. 


while True:
    
    linha, coluna = map(int,input().split())
    
    if linha == coluna == 0:
        break
    
    mat = [0]*linha
    contaminadas = []
    
    for i in range(linha):
        mat[i] = list(input().strip())
    
    for i in range(linha):
        for j in range(coluna):
            if mat[i][j] == 'T':
                contaminadas.append((i,j))
                
    while contaminadas != []:
        (x,y) = contaminadas.pop(0)
        
        
    # vizinho da coluna direita
    if y + 1 < coluna and mat[x][y + 1] == 'A':
        contaminhadas.append((x, y + 1))
        mat[x][y + 1] = 'T'
      
    # vizinho da coluna esquerda
    if y - 1 >= 0 and mat[x][y - 1] == 'A':
        contaminadas.append((x, y - 1))
        mat[x][y - 1] = 'T'


    # vizinho da linha acima
    if x - 1 >= 0 and mat[x - 1][y] == 'A':
        contaminadas.append((x - 1, y))
        mat[x - 1][y] = 'T'

    # vizinho da linha abaixo:
    if x + 1 < linha and mat[x + 1][y] == 'A':
        contaminadas.append((x + 1, y))
        mat[x + 1][y] = 'T'
        
    for i in range(linha):
        for j in range(coluna):
            print (mat[i][j],end='')
        print()
    print()
 
    
