#cria e preenche o primeiro vetor
primeiro = input().split()
#converte pra inteiro
for i in range(0, len(primeiro)):
    primeiro[i] = int(primeiro[i])
#cria e preeche o segundo vetor
segundo = input().split()
for i in range(0, len(segundo)):
    segundo[i] = int(segundo[i])
#compara
compativel = True
for i in range(5):
    if primeiro[i] == segundo[i]:
        compativel = False
        break

# Imprime o resultado
if compativel:
    print("Y")
else:
    print("N")
