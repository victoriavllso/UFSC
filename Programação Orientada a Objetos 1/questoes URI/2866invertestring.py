while True:
    try:
        c = int(input())
        for i in range(c):
            soma = ''
            mensagem = input()
            for letra in mensagem:
                if letra.islower():
                    soma = soma+letra
            soma = soma [:: -1] #inverte a string
            print(soma)
    except EOFError:
        break
