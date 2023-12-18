dic = {'EPR': 0, 'EHD':0, 'INTRUSOS':0,}

while True:
    try:

        n = int(input())

        for i in range(n):
            matricula, curso = input().split()
            matricula = int(matricula)
            
            if curso == 'EPR':
                dic['EPR']+=1

            if curso == 'EHD':
                dic['EHD']+=1
                
            if curso != 'EHD' and curso != 'EPR' :
                dic['INTRUSOS']+=1
            
        print('EPR: %d'%(dic['EPR']))
        print('EHD: %d'%dic['EHD'])
        print('INTRUSOS: %d'%dic['INTRUSOS'])
    
    except EOFError:
        break
    