cteste = 1
c50 = 0
c10 = 0
c5 = 0
c1 = 0
while True:
    n = int(input()) # B$ 50,00, B$10,00, B$5,00 e B$1,00
    if n == 0:
        break
    print("Teste %d"%(cteste))
    cteste +=1
    c50 = n//50
    r50 = n%50
    c10 = r50//10
    r10 = r50%10
    c5 = r10//5
    r5 = r10%5
    c1 = r5//1
    r1 = r5%1
    print("%d %d %d %d"%(c50,c10,c5,c1))
    print()
