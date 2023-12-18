while True:
    d,n = input().split()
    if d == '0' and n == '0':
        break
    novon = ''
    
    for digito in n: #\percorre cada digito de n para achar d
        if digito != d: #adiciona todos os digitos diferentes de 'd' em 'n'
            novon = novon +digito
    if novon == '': #se o novo digito for vazio, por exemplo se for 777
        print('0')
    else:
        print(int(novon))
