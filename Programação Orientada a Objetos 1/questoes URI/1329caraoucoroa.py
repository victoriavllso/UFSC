while True:
    n = int(input()) #numero de vezes jogadas
    if n == 0:
        break
    resultado = input().split()
    for i in range(0, len(resultado)):
        resultado[i] = int(resultado[i])
    
    cmaria = 0
    cjoao = 0
    
    for i in range(n):
        if resultado[i] == 0:
            cmaria += 1
        else:
            cjoao += 1
            
    print("Mary won %d times and John won %d times"%(cmaria, cjoao))
