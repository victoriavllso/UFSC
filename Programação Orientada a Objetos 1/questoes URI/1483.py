while True:
    v, n, m =  input().split()
    
    if v == n == m == 0:
        break
    v = float(v)
    lista = [ 'unidade', 'dezena', 'centena', 'milhar']
    dic_m = {}
    dic_n = {}
    #percorrer m e n de trás p frente
    cont = 0
    for i in range(len(m)-1,len(m)-5, -1):
        dic_m[lista[cont]] = m[i]
        cont += 1
    
    cont2 = 0
    for i in range(len(n)-1,len(n)-5, -1):
        dic_n[lista[cont2]] = n[i]
        cont2 += 1
        
    
    
        
        