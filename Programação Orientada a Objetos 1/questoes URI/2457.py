letra = input()
frase = input()
palavras = frase.split()
palavrastotais = len(palavras)
palavrascomaletra = 0

for palavra in palavras: #percorre todas as palavras do texto
        # Verifica se a letra está presente na palavra
    if letra in palavra:
        palavrascomaletra += 1

# Calcula a porcentagem de palavras com a letra de interesse
porcentagem = (palavrascomaletra / palavrastotais) * 100
print("%.1f"%(porcentagem))
