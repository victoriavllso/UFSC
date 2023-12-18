n = 0
c = 0
pedacos = 0
while True:
        n = int(input())
        if n == -1:
            break
        c+=1
        print(f'Teste {c}')
        
        pedacos = (2**n + 1)**2
        print(pedacos)
        print("")
