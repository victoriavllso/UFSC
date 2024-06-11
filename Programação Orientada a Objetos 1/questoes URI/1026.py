#aplicamos uma xor entre os operandos, visto que é 0 quanto são iguais

while True:
    try:
        a,b  = map(int, input().split())
        resultado = a^b
        print(resultado)

    except EOFError:
        break