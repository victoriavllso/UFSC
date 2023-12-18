while True:
    frase = input()
    if frase == '*':
        break
    palavras = frase.split()
    primeiraletra = palavras[0][0].lower() #obtenho a primeira letra da primeira palavra em minusculo
    tautograma = True
    for palavra in palavras:
        if primeiraletra != palavra[0].lower(): #comparo a primeira letra da primeira palavra com as primeiras letras das outras palavras
            tautograma = False
            break
    if tautograma:
        print('Y')
    else:
        print('N')
