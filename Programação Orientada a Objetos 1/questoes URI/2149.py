def phill(n):
    vetor = [0, 1, 1, 1]*n
    
    for i in range(4, n+1):
        if i%2 == 0:
            vetor[i] = vetor[i-1]*vetor[i-2]
        else:
            vetor[i] = vetor[i-1]+vetor[i-2]

    print(vetor[n])
            
while True:
    try:
        n = int(input())
        if n == 1:
            print('0')
        else:
            phill(n)
    
    
    except EOFError:
        break
            
    