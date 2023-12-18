def calculo(arvores):
    total_arvores = len(arvores)
    contagem_especies = {}
    
    for especie in arvores:
        if especie in contagem_especies:
            contagem_especies[especie] += 1
        else:
            contagem_especies[especie] = 1
    
    especies_ordenadas = sorted(contagem_especies.keys())
    for especie in especies_ordenadas:
        percentual = contagem_especies[especie] / total_arvores * 100
        print('%s %.4f'%(especie,percentual))
        
    
n = int(input())
input()  # linha em branco
for i in range(n):

    
    arvores = []
    while True:
        try:
            especie = input().strip()
            if especie == '':  # se a linha estiver vazia, eu paro de ler
                break
            arvores.append(especie)
        except EOFError:
            break
    if i >0:
        print()  # imprime linha em branco entre os casos de teste

    calculo(arvores)

