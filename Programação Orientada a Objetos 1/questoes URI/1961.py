p, n = input().split() # altura do pulo e numero de canos
p, n = int(p), int(n)
resultado = "YOU WIN"
#cria o vetor e converte
alturas = input().split()
for i in range(0, len(alturas)):
    alturas[i] = int(alturas[i])
    
for i in range(n-1): #o n-1 é para comparar até o penultimo, pois depois do ultimo não tem mais nada p comparar e o jogo acaba
    if abs(alturas[i+1] - alturas[i])>p:
        resultado = "GAME OVER"
print(resultado)
