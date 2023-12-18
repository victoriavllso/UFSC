instancias = int(input())

for _ in range(instancias):
    palavras_no_dicio, numero_letra_musica = map(int, input().split())
    dic = {}
    
    for _ in range(palavras_no_dicio):
        japones = input()
        traducao = input()
        dic[japones] = traducao
    
    for _ in range(numero_letra_musica):
        musica = input().split()
        traducao = []
        
        for palavra in musica:
            if palavra in dic and dic[palavra] != palavra:
                traducao.append(dic[palavra])
            else:
                traducao.append(palavra)
        
        print(' '.join(traducao))
    
    print()

