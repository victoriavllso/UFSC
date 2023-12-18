n = int(input())

for i in range(n):
    soma = ''
    string1, string2 = input().split()
    tamanho_maximo = max(len(string1), len(string2)) #uma string pode ser maior que a outra, então preciso pegar o tamanho da maior
    for j in range(tamanho_maximo):
        if j < len(string1): #para percorrer toda a string 1
            soma += string1[j]
        if j < len(string2): #para percorrer toda a string 2
            soma += string2[j]
    print(soma)
