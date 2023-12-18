# -*- coding: utf-8 -*-

'''
Escreva a sua solução aqui
Code your solution here
Escriba su solución aquí
'''

l, c = map(int, input().split())
posl, posc = map(int, input().split()) #posição em que o robo está
posl = posl -1 #ajuste do indice
posc = posc -1
mat = []

for i in range(l):
    linha = []
    ladrilho = input().split()
    for j in range(c):
        linha.append(int(ladrilho[j]))
    mat.append(linha)
while True:
    proxi = -1 # ajuste do indice
    proxj = -1
    mat[posl][posc] = 'ok' #ao iniciar o loop de novo, essa posição fica marcada com um 'ok', indicando que ele estava nela ant
    
    ######conferir quais dos vizinhos são iguais a 1###########
        
    #vizinho da coluna direita
    if posc+1 < c and mat[posl][posc+1] == 1: #se a coluna for maior que j+1 então posso ir para a direita
        proxi = posl #se for igual a 1, então ele recebe as novas posições i,j
        proxj = posc+1
    #vizinho da coluna esquerda
    if posc-1 >= 0 and mat[posl][posc-1] == 1:
        proxi = posl
        proxj = posc-1
     
     #vizinho da linha acima
    if posl-1>=0 and mat[posl-1][posc] == 1:
        proxi = posl-1
        proxj = posc
     #vizinho da linha abaixo:
        
    if posl+1<l and mat[posl+1][posc] ==1:
        proxi = posl+1
        proxj = posc
            
    if proxi == -1: #Caso isso aconteça, então significa que a partir da casa atual não consigo mais mover, então posso simplesmente imprimir a resposta e parar
        print("%d %d" % (posl+1, posc+1))
        break
    #Caso contrário, basta marcar a minha nova posição atual
    posl = proxi
    posc = proxj
