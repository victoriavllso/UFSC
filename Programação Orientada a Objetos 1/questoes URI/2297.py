c = 0
while True :
    r = int(input())
    if r == 0:
        break
    c+=1
    aldo = beto = 0
    for i in range(r):
        a,b = input().split()
        a,b = int(a), int(b)
        aldo += a
        beto += b
    if aldo>beto:
        print("Teste %.d"%(c))
        print("Aldo")
        print("")
    elif beto>aldo:
        print("Teste %.d"%(c))
        print("Beto")
        print("")
