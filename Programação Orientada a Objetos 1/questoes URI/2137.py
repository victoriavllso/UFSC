def ordem(livro):
    livro.sort()
    for codigo in livro:
        print(codigo)
    


while True:
    try:
        
        n = int(input())
        livros = []
        for i in range(n):
            código_livro = input()
            if len(código_livro)<4:
                código_livro = código_livro.zfill(4) #a função zfill preenche com zeros, deixando do tamanho especificado
            livros.append(código_livro)
        ordem(livros)
            
    
    except EOFError:
        break