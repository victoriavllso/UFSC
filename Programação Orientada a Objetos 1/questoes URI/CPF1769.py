while True:
    try:
        CPF = input().strip() #REMOVE O BRANCO
        cpf = CPF.replace('.', '').replace('-', '') #substitui o ponto e traço por um espaço vazio
        soma1 = 0
        soma2 = 0
        for i in range(9): #|para achar b1
            soma1 = soma1 + int(cpf[i]) * (i+1) #multiplicamos o primeiro por um, o segundo por dois e assim segue
        b1 = soma1%11
        if b1 == 10:
             b1 = 0
        for i in range(9): #parar achar b2
            soma2 = soma2 + int(cpf[i]) * (9-i)
        b2 = soma2%11
        if b2 == 10:
            b2 = 0
        if b1 == int(CPF[-2]):
            if b2 == int(CPF[-1]):
                print("CPF valido")
            else:
                print("CPF invalido") #esse else é necessário para fechar o if do b2
    
        else:
            print("CPF invalido")
            
    except EOFError:
        break
1769
