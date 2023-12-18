n = int(input())
dic = {}

for i in range(n):
    lingua = input()
    tradução = input()
    dic[lingua] = tradução
m = int(input())

for i in range(m):
    nome = input()
    lingua = input()
    
    print(nome)
    print(dic[lingua])
    print()

