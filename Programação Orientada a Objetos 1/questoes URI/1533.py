while True:
    n = int(input())
    if n == 0:
        break
    suspeito = input().split()
    for i in range(0, len(suspeito)): 
        suspeito[i] = int(suspeito[i])
    maiorsuspeito = max(suspeito) #encontra o maior suspeito
    for i in range(0, len(suspeito)): #armazena a posição do maior suspeito
        if maiorsuspeito == suspeito[i]:
            maiorpos = i+1
    #remove o maior suspeito e encontra o segundo maior
    suspeito.remove(maiorsuspeito)
    segundosuspeito = max(suspeito)
    for i in range(0, len(suspeito)): #encontra a posição do segundo suspeito
        if suspeito [i] == segundosuspeito:
            possegundo = i + 1
    if maiorpos <= possegundo: #como removemos um item da lista e isso alterou o tamanho dela, é necessário ajustar para quando a posição do segundo for maior ou igual
       possegundo += 1
    print(possegundo)



