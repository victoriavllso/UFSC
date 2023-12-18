palavra1 = input()
palavra2 = input()

for i in range(min(len(palavra1), len(palavra2))):
    if palavra1[i] < palavra2[i]:
        print(palavra1)
        print(palavra2)
        break
    elif palavra1[i] > palavra2[i]:
        print(palavra2)
        print(palavra1)
        break
else: # se não, se as palavras tiverem o começo igual
    if len(palavra1) <= len(palavra2):
        print(palavra1)
        print(palavra2)
    else:
        print(palavra2)
        print(palavra1)

