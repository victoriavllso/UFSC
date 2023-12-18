def mdc(a, b):
    if b == 0:
        return a
    return mdc(b, a % b)

def mmc(a, b):
    return a * b // mdc(a, b)

def mmc_tres_num(a, b, c):
    return mmc(a, mmc(b, c))
while True:
    try:
        ultimo = int(input())
        l1, l2, l3 = map(int, input().split())

        proximo_alinhamento = mmc_tres_num(l1, l2, l3) - ultimo
        print(proximo_alinhamento)

    except EOFError:
        break
def mmc(a, b, c):
    def mdc(x, y):
        if y == 0:
            return x
        return mdc(y, x % y)    
    return abs(a*b*c)//mdc(a, mdc(b, c))
    


while True:
    try:
        ultimo = int(input())
        l1,l2,l3 = map(int,input().split())
        
        proximo_alinhamento = mmc(l1,l2,l3) - ultimo
        print(proximo_alinhamento)
        
    except EOFError:
        break