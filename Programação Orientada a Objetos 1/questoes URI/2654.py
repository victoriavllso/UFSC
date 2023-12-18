n = int(input())
candidates = {}

# leitura dos candidatos e armazenamento no dicionário
for i in range(n):
    name, power, kills, deaths = input().split()
    candidates[name] = (int(power), int(kills), int(deaths))

# ordenação dos candidatos, transforma em uma tupla do tipo ('Zeus', (1000, 10, 0))
sorted_candidates = sorted(candidates.items(), key=lambda item: (-item[1][0], -item[1][1], item[1][2], item[0])) # se item for o par chave-valor ('Zeus', (1000, 10, 0)), então item[1][0] será 1000,

# impressão do nome do novo godofor
print(sorted_candidates[0][0])

