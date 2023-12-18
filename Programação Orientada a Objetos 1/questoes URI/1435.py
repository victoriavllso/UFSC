while True:
    n = int(input())
    if n == 0:
        break
    for i in range(0,n):
        for j in range(0,n): #fazer as condições dentro do range para checar em cada posição i,j
            
            if (i< n-i-1): #pego o simétrico a ele, na linha, e comparo qual tem a menor distancia
                dlinha = i
            else:
                dlinha = n-i-1
            if (j<n-j-1): #pego o simétrico a ele, na coluna, e comparo qual tem a menor distancia
                dcoluna = j
            else:
                dcoluna = n-j-1
            if dcoluna<dlinha: #depois pego a menor distancia entre linha e coluna
                distancia = dcoluna
            else:
                distancia = dlinha
            print("%3d"%(distancia+1),end='')
            if (j != n-1):
                print(end=' ')
        print()
        
    print()
