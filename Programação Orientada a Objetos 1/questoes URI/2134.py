instancia = 1  # Variável para controlar o número da instância

while True:
    try:
        alunos = int(input())  # Número de alunos na competição

        lista_alunos = []  # Lista para armazenar os dados dos alunos

        # Ler os dados dos alunos e adicioná-los à lista_alunos
        for i in range(alunos):
            nome, numero_problemas = input().split()
            numero_problemas = int(numero_problemas)
            lista_alunos.append((nome, numero_problemas))

        # Ordenar a lista de alunos em ordem decrescente de problemas resolvidos e em ordem alfabética, sendo que a prioridade é organizar em ordem decrescente de nota
        lista_alunos.sort(key=lambda x: (-x[1], x[0]))

        # Reprovado é o último aluno da lista ordenada
        reprovado = lista_alunos[-1][0]

        # Imprimir o resultado
        print("Instancia", instancia)
        print(reprovado)
        print()

        instancia += 1  # Incrementar o número da instância

    except EOFError:
        break
