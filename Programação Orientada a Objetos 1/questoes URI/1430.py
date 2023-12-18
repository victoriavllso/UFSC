dic = {'W': 1, 'H': 1/2, 'Q': 1/4,
       'E':1/8, 'S': 1/16, 'T': 1/32, 'X':1/64}


while True:
    
    compasso = input()
    soma = 0 #inicio aqui, pois para cada novo compasso, preciso zerar a soma do anterior, para não acumular a soma
    if compasso == '*':
        break
    
    compasso = compasso.split('/') #transformo o compasso em uma lista e removo os '/', porém tem strings vazias no começo e no fim dessa lista ex: ['', 'HH', 'QQQQ', 'XXXTXTEQH', 'W', 'HW', '']
    novo_compasso = []
    

    for i in compasso:
        if i: #se i não for uma string vazia
            novo_compasso.append(i)

        
    for conjunto in novo_compasso:
        duracao = 0 #para cada novo conjunto eu zero a duração
        for identificador in conjunto:
            duracao += dic[identificador]
            
        if duracao == 1:
            soma +=1
    
    print(soma)