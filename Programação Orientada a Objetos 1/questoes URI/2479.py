n = int(input())
comportou = não_comportou = 0
nome_criancas = []
for i in range(n):
    comportamento, nome = input().split()
    
    if comportamento == '+':
        comportou +=1
    else:
        não_comportou +=1
    nome_criancas.append(nome)
nome_criancas.sort()
for name in nome_criancas:
    print(name)
print('Se comportaram: %d | Nao se comportaram: %d'%(comportou,não_comportou))