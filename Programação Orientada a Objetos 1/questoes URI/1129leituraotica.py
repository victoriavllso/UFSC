while True:
    
    n = int(input()) #numero de questões
    if n==0:
        break
    
    for i in range(n): #para cada numero de questões, vai preencher o vetor
        #cria e preeche o vetor (nesse caso, i = questao)
        questao = input().split()
        contp = 0
        pos = 0
        #converte pra inteiro
        for i in range(0, len(questao)): #nesse caso i é a alternativa
            questao[i] = int(questao[i])
            if questao[i]<= 127:#pretos
                contp +=1
                pos = i #posição da ALTERNATIVA
        if contp != 1:
            print("*")
        else:
            alt = "ABCDE" #vetor?
            print(alt[pos])
            
