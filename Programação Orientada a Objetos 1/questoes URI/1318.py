while True:
    # n de bilhete originais e pessoas na festa
    n, m = input().split()
    n, m = int(n), int(m)
    if n == m == 0:
        break
    # Leitura dos números de bilhetes presentes no pacote
    bilhete = input().split()
    clone = 0
    for i in range(0, len(bilhete)): 
        bilhete[i] = int(bilhete[i])
    for i in range(0, n+1):#iterando sobre cada bilhete original
        contador = 0
        for j in range(m): #verificar se o número de bilhete atual aparece de novo na lista de bilhetes presentes no pacote. 
            if bilhete[j] == i: 
                contador +=1
        if contador>1: 
            clone +=1
    print(clone)
    
