def triangulo_pascal(a):
    soma = (2**a)-1
    print(soma)
    
t = int(input())

for _ in range(t):
    linhas = int(input())
    triangulo_pascal(linhas)