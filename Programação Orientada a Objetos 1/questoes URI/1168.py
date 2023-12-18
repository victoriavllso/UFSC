n = int(input())
leds = 0
for i in range(n):
    leds = 0
    numero = input()
    for c in numero:
        if c =='1':
            leds += 2
        if c =='2' or c == '3' or c == '5' :
            leds += 5
        if c =='4' :
            leds += 4
        elif c =='6' or c =='9' or c== '0' :
            leds += 6
        elif c =='7' :
            leds +=3
        elif c =='8':
            leds += 7

    print("%d leds"%(leds))
            

