def soma(dicionario,desc):
    soma = 0
    for palavra in desc:
        if palavra in dic.keys(): #as chaves são as profissoes 
            soma += dic[palavra]
    
    print(soma)

qnt_palavras, quant_desc = map(int,input().split())
dic = {}
for i in range(qnt_palavras):
    profissao, salario = input().split()
    salario = int(salario)
    dic[profissao] = salario

count_desc = 0
descricao = []
while count_desc < quant_desc:
    entrada = input()
    
    if entrada == '.':
        count_desc += 1
        soma(dic, descricao)
        descricao = []
    else:
        descricao = descricao + entrada.split()
    

        
    