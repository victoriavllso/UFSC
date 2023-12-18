
mat = [0]*9
n = int(input())
for c in range(1,n+1): #o 'c' será o meu "instancia c"
    
    #crio a matriz
    for i in range(9):
        mat[i] = input().split()
        for j in range(9):
            mat[i][j] = int(mat[i][j])
    valido = True
    jatem = [0]*10 #vetor para verificar se o numero de 1 a 9 já está presente
    
    for i in range(9): #verifico as linhas
        
        for x in range(1,10):
            jatem[x] = False #nenhum numero está presente
        
        for j in range(9): #para cada coluna da linha i
            if jatem[mat[i][j]]: #verifico se o valor matij já está na lista jatem, se sim eu interrompo o programa e o sudoku é inválido
                valido = False
                break
            else:
                jatem[mat[i][j]] = True #se o valor não estiver, então atualizo para verdadeiro(pois está falso) e se ele aparecer de novo, o valiso irá atualizar para falso na condição acima
        if not valido:
            break
     
     
    if valido: #se for valido nas linhas, agora testo nas colunas
        for j in range(9):
            for x in range(1,10):
                jatem[x] = False #nenhum numero está presente
            for i in range(9): # para cada linha da coluna
                if jatem[mat[i][j]]:
                    valido = False
                    break
                else:
                    jatem[mat[i][j]] = True # se o valor não estava, então agora vai estar grhh
            if not valido:
                break
            
############testando os quadrados pequenos
    if valido:
        #Testo cada quadrado pequeno
        for y in range(0,3):
            for z in range(0,3):
                for x in range(1,10): #Marco inicialmente todos os valores de 1 até 9 como não presentes
                    jatem[x] = False
                
                for i in range(y*3,(y+1)*3): #Pegando de 3 em 3 quadrados (nas linhas)
                    for j in range(z*3,(z+1)*3): #Pegando de 3 em 3 quadrados (nas colunas)
                        if jatem[mat[i][j]]: #Se o valor atual já está presente, então é porque ele apareceu antes, assim já não é um sudoku válido
                            valido = False
                            break
                        else: #Caso contrário, digo que o valor atual está presente
                            jatem[mat[i][j]] = True  
                    if not valido: #break para o quadrado 3x3
                        break
                if not valido: #break para a linha
                    break
            if not valido:
                break        
    
    print("Instancia %d" % (c))
    if valido:
        print("SIM")
    else:
        print("NAO")
    print()

