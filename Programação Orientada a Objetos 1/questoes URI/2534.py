while True:
    try:
        habitantes, consultas = map(int,input().split())
        lista_notas = []

        for i in range(habitantes):
            nota = int(input())
            lista_notas.append(nota)
            
        lista_notas.sort(reverse = True)

        for i in range(consultas):
            posição = int(input())

            print(lista_notas[posição-1])
            
    except EOFError:
        break
