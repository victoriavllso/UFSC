frase = input()
soma = ''
palavras = frase.split() #lista de palavras separadas por espaço

for palavra in palavras: #percorre cada palavra da lista
    for i in range(1, len(palavra), 2): #pega apenas as letras ímpares das palavras
        soma += palavra[i] #soma as letras impares
    soma += ' ' #adiciona espaço após criar a primeira palavra

print(soma.strip()) #imprime sem espaço extra no final


