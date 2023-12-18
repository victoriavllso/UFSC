# leitura do número de palavras irregulares e do número de palavras a serem transformadas
L, N = input().split()
L, N = int(L), int(N)


singular = []
plural = []

# leitura das palavras irregulares e seus plurais correspondentes
for i in range(L):
    sing, pl = input().split()
    singular.append(sing)
    plural.append(pl)

# loop para transformar as palavras em seus plurais correspondentes
for i in range(N):
    palavra = input().strip()  # leitura da palavra e remoção de espaços em branco no início e no final
    
    # verificação se a palavra está na lista de palavras irregulares
    if palavra in singular:
        posicao = singular.index(palavra)  # encontra o índice da palavra singular na lista
        print(plural[posicao])  # imprime o plural correspondente na mesma posição na lista de plurais
    # se a palavra não estiver na lista de palavras irregulares, verifica as regras para formar o plural
    else:
        # regra para palavras terminadas em "y" após uma consoante
        if palavra.endswith("y") and palavra[-2] not in "aeiou": #endswith é uma função que ve se a palavra termina com o que foi especificado
            print(palavra[:-1] + "ies")
        # regra para palavras terminadas em "o", "s", "ch", "sh" ou "x"
        elif palavra.endswith(("o", "s", "ch", "sh", "x")):
            print(palavra + "es")
        # regra padrão para palavras terminadas em outras letras
        else:
            print(palavra + "s")

