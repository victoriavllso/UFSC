t = int(input())
mat = [None]*5

for _ in range(t):    
    for i in range(5):        
        linha = input().strip() #Removo linhas em branco da entrada
        while linha == '':
            linha = input().strip()
        mat[i] = linha.split()
        
    alcançadas = []
    if mat[0][0] == '0':
        alcançadas.append((0,0))
        mat[0][0] = 'A'
        
     

    while alcançadas != []: #enquanto tiver elementos na lista
        (x,y) = alcançadas.pop(0) #extrai a tupla da lista alcançadas e atribui os valores x e y. Esses valores de x e y vão ser utilizados para verificar se os seus vizinhos obedecem as condições do problema
        
        ##verifico os vizinhos de x e y, o que obedecer a condição, adiciono na lista de alcançadas e atualizado meu x e y, ou seja no próximo passo do loop, vou verificar os novos x e y
        
        # vizinho da coluna direita
        if y + 1 < 5 and mat[x][y + 1] == '0':
            alcançadas.append((x, y + 1))
            mat[x][y + 1] = 'A'     
          
          
        # vizinho da coluna esquerda
        if y - 1 >= 0 and mat[x][y - 1] == '0':
            alcançadas.append((x, y - 1))
            mat[x][y - 1] = 'A'


        # vizinho da linha acima
        if x - 1 >= 0 and mat[x - 1][y] == '0':
            alcançadas.append((x - 1, y))
            mat[x - 1][y] = 'A'

        # vizinho da linha abaixo:
        if x + 1 < 5 and mat[x + 1][y] == '0':
            alcançadas.append((x + 1, y))
            mat[x + 1][y] = 'A'
        
    if mat[4][4] == 'A':
        print('COPS')
    else:
        print('ROBBERS')