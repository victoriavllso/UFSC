linha, coluna = map(int, input().split())
mat = [0]*linha
maiorlinha = 0
maiorcoluna = 0

for i in range(linha):
    mat[i] = input().split()
    for j in range(coluna):
        mat[i][j] = int(mat[i][j])
        
for i in range(linha):
    somalinha = sum(mat[i]) #faço a soma da linha
    if somalinha>maiorlinha: #se a soma for maior do que a soma atual, faço a atual se tornar a maior
        maiorlinha = somalinha
        
for j in range(coluna):
    somacoluna = sum(mat[i][j] for i in range(linha)) #como a coluna inclui diversos vetores, temos que percorrer todos eles para somar
    if somacoluna>maiorcoluna:
        maiorcoluna = somacoluna
if maiorlinha > maiorcoluna:
    print(maiorlinha)
else:
    print(maiorcoluna)
