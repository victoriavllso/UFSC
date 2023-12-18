while True:
    try:
        keyb = ['`','1','2','3','4','5','6','7','8','9','0','-','=','q','w','e','r','t','y','u','i','o','p','[',']','\\','a','s','d','f','g','h','j','k','l',';',"'",'z','x','c','v','b','n','m',',','.','/']
        texto = input()
        decod = ''
        for i in texto:
            if i == ' ':
                decod = decod + i
            else:
                pos_do_digito_errado = keyb.index(i.lower())  # encontra o índice do caractere digitado de forma errada(em minusculo)
                decod = decod + keyb[pos_do_digito_errado -1]  # obter o caractere correto em keyb usando o índice encontrado acima
        print(decod.upper()) #imprime em maiusculo
    except EOFError:
        break
