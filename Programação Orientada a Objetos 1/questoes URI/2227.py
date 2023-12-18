cteste = 0
voos = [None]*101
while True:
    
    a, v = input().split()
    a, v = int(a), int(v) # numero de aeroportos e aeroportos
    if a == v == 0:
        break
    cteste +=1
    #o i do range representa o numero do aeroporto
    for i in range(1, a+1): #inicio todos os voos com 0
        voos [i] = 0
        
    for i in range(v): 
        x, y = input().split()
        x, y = int(x), int(y)
        voos[x] += 1  # aumenta o contador de voos no aeroposto x
        voos[y] += 1  # aumenta o contador de voos no aeroporto y
    maximovoos = 0   
    for i in range(1, a+1):
        if voos[i] > maximovoos:
            maximovoos = voos[i]
    
    print("Teste %d"%(cteste))
    for i in range(1,a+1): #Imprimo todos os aeroportos que possuem aquele número máximo de vôos
        if voos[i] == maximovoos:
                print("%d " % (i), end='')
    print() #Quebro a linha com os aeroportos
    print() #Imprimo mais uma linha em branco entre os casos de teste
