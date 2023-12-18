n = input()
m = ""
e = input().strip().replace(" ", "") #lê a entrada e remove os espaços
for i in range(0, len(e), 2): #como o slice 'e[i:i+2]' está pegando a entrada em pares(posição i e i+2), podemos pular de 2 em 2
    m += chr(int(e[i:i+2], 16)) entende a entrada 'e' como hexadecimal, converte para chr e concatena
print(m)
