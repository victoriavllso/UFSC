c = 0
while True:
    n = int(input())
    if n == 0:
        break
    c+=1
    print(f'Teste {c}')
    j = z = 0
    for i in range(n):
        a, b = input().split() 
        a, b = int(a), int(b)
        j = j+a
        z = z+b
        print(j-z)
        
    print()
