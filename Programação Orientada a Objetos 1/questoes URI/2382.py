l,a,p,r = int(l), int(a), int(p), int(r)

dc = (l**2 + a**2 + p**2)**0.5 #diagonal da caixa
de = 2*r #diametro da esfera
if dc<=de:
    print("S")
else:
    print("N")
