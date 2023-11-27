class OperacaoMatrizes:
    def __init__(self, mat1, mat2):
        self.mat1 = mat1
        self.mat2 = mat2
    
    def calcular_soma(self):
        if len(self.mat1) != len(self.mat2) or len(self.mat1[0]) != len(self.mat2[0]):
            print("Não é possível somar matrizes com tamanhos diferentes. Tente novamente.")
        else:
            soma = []
            for i in range(len(self.mat1)):
                linha_soma = []
                for j in range(len(self.mat1[0])):
                    elemento_soma = self.mat1[i][j] + self.mat2[i][j]
                    linha_soma.append(elemento_soma)
                soma.append(linha_soma)
            self.print_matrix("Resultado da soma:", soma)

    def calcular_produto_escalar(self):
        numero = int(input("Digite o número multiplicador: "))
        prod_escalar = []
        for i in range(len(self.mat1)):
            linha_produto = []
            for j in range(len(self.mat1[0])):
                elemento_produto = self.mat1[i][j] * numero
                linha_produto.append(elemento_produto)
            prod_escalar.append(linha_produto)
        self.print_matrix("Resultado do produto por escalar:", prod_escalar)

    def calcular_produto_matrizes(self):
        if len(self.mat1[0]) != len(self.mat2):
            print("Número de colunas da primeira matriz deve ser igual ao número de linhas da segunda matriz para multiplicação. Tente novamente.")
        else:
            produto = []
            for i in range(len(self.mat1)):
                linha_produto = []
                for j in range(len(self.mat2[0])):
                    coluna = [self.mat2[k][j] for k in range(len(self.mat2))]
                    produto_element = sum(self.mat1[i][k] * coluna[k] for k in range(len(coluna)))
                    linha_produto.append(produto_element)
                produto.append(linha_produto)
            self.print_matrix("Resultado do produto de matrizes:", produto)



    def print_matrix(self, message, matrix):
        print(message)
        for row in matrix:
            print(row)

def main():
    entrada1 = input("Digite os valores para a primeira matriz (separados por espaços e quebra de linha entre as linhas): ")
    linhas1 = entrada1.split('\n')
    mat1 = [list(map(int, linha.split())) for linha in linhas1]

    entrada2 = input("Digite os valores para a segunda matriz (separados por espaços e quebra de linha entre as linhas): ")
    linhas2 = entrada2.split('\n')
    mat2 = [list(map(int, linha.split())) for linha in linhas2]

    operacao_matrizes = OperacaoMatrizes(mat1, mat2)
    
    while True:
        sel = input("Digite a operação que deseja fazer (soma, produto por escalar, produto de matrizes, transposta). Se quiser encerrar o programa, digite 'exit': ")
        if sel == 'exit':
            break
        elif sel == "soma":
            operacao_matrizes.calcular_soma()
        elif sel == "produto por escalar":
            operacao_matrizes.calcular_produto_escalar()
        elif sel == "produto de matrizes":
            operacao_matrizes.calcular_produto_matrizes()
        else:
            print("Operação inválida. Tente novamente.")

if __name__ == "__main__":
    main()
