while True:
    try:
        n = int(input())
        frase = ''
        for i in range(n):
            entrada = int(input(), 2) #aqui ele entende que a entrada está em binário e converte p decimal
            entrada = chr(entrada) #aqui ele converte o decimal em ASCII
            frase = frase+entrada
        print(frase)

    except EOFError:
        break
