while True:
    
    n = int(input())
    
    if n == 0:
        break
    
    dic = {}
    numero = input().split()
    for i in range(n):
        if not numero[i] in dic:
            dic[numero[i]] = 1 #se não estiver no dicionario, adiciono uma unidade, p dizer que tem uma unidade do numero
        else: #se ele já estava, somo mais uma unidade, totalizando 2, ou seja, tenho um par
            dic[numero[i]] +=1
            
    for k in dic.keys():
        if dic[k] %2 !=0: #se o valor naquela posição for 1
            print(k)
            break
