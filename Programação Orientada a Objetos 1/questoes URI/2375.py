diametro = int(input())
a, l, p = input().split()
a, l, p = int(a), int(l), int(p)

if diametro <= a:
    if diametro <= l:
        if diametro <= p:
            print("S")
else:
    print("N")2375
