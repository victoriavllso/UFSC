posicao = 0
controle = 0
for i in range(100):
    A = int(input())
    if A > controle: #se o input for maior que o controle
        maior = A #o maior vira o input
        posicao = i+1 #a posição é escrita
        controle = A #cria-se um novo controle substituindo o anterior a cada maior que é colocado
print(controle)
print(posicao)
