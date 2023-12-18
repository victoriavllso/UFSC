n = int(input())
x = input().split()
for i in range(0,n):
    x[i] = int(x[i])

menor = x[0]
posicao = 0

for i in range(0, n):
    if x[i] < menor:
        menor = x[i]
        posicao = i

print("Menor valor:", menor)
print("Posicao:", posicao)
