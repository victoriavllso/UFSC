class Notas():
    def __init__(self, dic_notas):
        self.__dic_notas = dic_notas

    def calcular_media(self, nome_aluno):
        if nome_aluno in self.__dic_notas:
            notas = self.__dic_notas[nome_aluno]
            notas = [float(nota) for nota in notas]
            media = sum(notas) / len(notas)
            return media
        else:
            return "Nome não encontrado"

dic = {}
while True:
    nome = input("Digite o nome do aluno ou aperte enter para imprimir as notas: ")
    if nome == '':
        break
    notas = input("Digite as notas do aluno separadas por espaço: ").split()

    dic[nome] = notas

gerenciar = Notas(dic)

for pessoa in dic.keys():
    media_aluno = gerenciar.calcular_media(pessoa)
    print(f"Aluno(a) {pessoa} tem a média {media_aluno}")
    print()
