
binario = input()
qnt_numeros = int(input())
resultado = []
binario_convertido = int(binario,2)

for i in range(qnt_numeros):
    numero_divisão = int(input())
    
    if binario_convertido%numero_divisão == 0:
        resultado.append(numero_divisão)
if resultado:
    resultado.sort()
    print(*resultado)
else:
    print('Nenhum')

