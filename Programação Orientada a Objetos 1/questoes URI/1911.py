while True:
    
    dic = {}
    qnt_alunos = int(input())
    falsas = 0
    if qnt_alunos == 0:
        break
    
    for i in range(qnt_alunos):
        nome, ass_original = input().split()
        dic[nome] = ass_original
        
    qnt_presentes = int(input())
    
    
    for i in range(qnt_presentes):
        nome2, ass_aula = input().split()
        c = 0
        errada = 0
        for letra in ass_aula:
            variavel = dic[nome2] #poderia ser apenas 'nome' ao invés de 'nome2'
            if variavel[c] != letra:
                errada+=1
            c+=1
        if errada >1:
            falsas +=1
    print(falsas)
        
        