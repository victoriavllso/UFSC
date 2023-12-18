n = int(input())
pares = []
impares = []

for i in range(n):
    numero = int(input())
    
    if numero%2==0:
        pares.append(numero)
    else:
        impares.append(numero)
        
pares.sort()
impares.sort(reverse = True)

for num in pares:
    print(pares)
for num in impares:
    print(impares)