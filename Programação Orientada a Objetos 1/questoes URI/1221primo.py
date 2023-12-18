n = int(input())
j = 0
for i in range(n):
    x = int(input())
    primo = True
    if x<2:
        primo = False
    j = 2
    while j * j <= x: #se tiver um divisor entre 2 e a raiz quadrada, então é um numero composto
        if x%j == 0:
            primo = False  
            break
        j += 1
    if primo:
        print("Prime")
    else:
        print("Not Prime")
