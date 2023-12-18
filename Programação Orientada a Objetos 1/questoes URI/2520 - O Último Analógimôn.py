while True:
    try:

        linha, coluna = map(int,input().split())
        x1= x2=y1= y2= 0
        mat = [0]*linha
        
        for i in range(linha):
            mat[i] = input().split()
            for j in range(coluna):
                mat[i][j] = int(mat[i][j])
        for i in range(linha):
            for j in range(coluna):
                if mat[i][j] == 1: #achando a minha posição, armazenos os indices
                    x1,y1 = i,j
                if mat[i][j] == 2:
                    x2,y2 = i,j
        distancia = abs(x2 - x1) + abs(y2 - y1)
                
        print(distancia)
        
        
    except EOFError:
        break
