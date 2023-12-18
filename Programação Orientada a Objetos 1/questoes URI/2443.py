def mdc(a, b):
    while b:
        a, b = b, a % b
    return a

def reducao(x, y, z, w):
    numerador = x * w + y * z
    denominador = y * w
    divisor = mdc(numerador, denominador)
    
    numerador_irredutivel = numerador // divisor
    denominador_irredutivel = denominador // divisor
    
    print(numerador_irredutivel, denominador_irredutivel)

a, b, c, d = map(int, input().split())
reducao(a, b, c, d)
