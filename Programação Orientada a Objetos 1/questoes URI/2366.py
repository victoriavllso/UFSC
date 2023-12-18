#distancia entre 2 pontos de agua #consecutivos tem q ser menor ou igual que a dimax
n, m = input().split()
n, m = int(n), int(m)

distancias = input().split()
consegue = True
for i in range (0, len(distancias)):
    distancias[i] = int(distancias[i])
    
for i in range(1, len(distancias)):
    diferenca = distancias[i] - distancias[i-1] #posto de agua atual - proximo posto
    if diferenca > m:
        consegue = False
        break
if distancias[-1] != 42195 and 42195 - distancias[-1] > m: #considerando que ele passou pelo ultimo posto, mas não consegue percorrer até o final
    consegue = False 
if consegue:  
    print("S")
else:
    print("N")



