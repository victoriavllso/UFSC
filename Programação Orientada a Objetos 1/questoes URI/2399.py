n = int(input())
tabuleiro = []
#preenche o tabuleiro com a qnt de minas
for i in range(n):
    mina = int(input())
    tabuleiro.append(mina)

for i in range(n):
    qtd_minas = 0
    if i > 0 and tabuleiro[i-1] == 1:
        qtd_minas += 1
    if tabuleiro[i] == 1:
        qtd_minas += 1
    if i < n-1 and tabuleiro[i+1] == 1:
        qtd_minas += 1
    print(qtd_minas)
