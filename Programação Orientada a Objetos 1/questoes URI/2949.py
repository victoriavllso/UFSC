n = int(input())
dic = {'anoes': 0,
     'elfos': 0,
     'humanos': 0,
     'magos': 0,
     'hobbits': 0,
}
for i in range(n):
    nome, raca = input().split()
    
    if raca == 'A':
        dic['anoes']+=1
        
    if raca == 'E':
        dic['elfos']+=1
    
    if raca == 'H':
        dic['humanos']+=1
    
    if raca == 'M':
        dic['magos']+=1
    
    if raca == 'X':
        dic['hobbits']+=1
        
print('%d Hobbit(s)'%(dic['hobbits']))
print('%d Humano(s)'%(dic['humanos']))
print('%d Elfo(s)'%(dic['elfos']))
print('%d Anao(oes)'%(dic['anoes']))
print('%d Mago(s)'%(dic['magos']))

    