faltam = 0
while True:
    try:
        mes, dia = input().split()
        mes, dia = int(mes), int(dia)
        if mes == 12 and dia == 24:
            print("E vespera de natal!")
        elif mes == 12 and dia == 25:
            print("E natal!")
        elif mes==12 and dia>25:
            print("Ja passou!")
        else:
            if(mes==1):
                faltam = 360 - dia
            
            elif(mes==2):
                faltam = 360 - dia - 31
            elif(mes==3):
                faltam = 360 - dia - 31 - 29
            elif (mes == 4):
                faltam = 360 - dia - 31 - 29 -31
   
            elif(mes==5):
                faltam = 360 - dia - 31 - 29 -31-30
      
            elif(mes==6):
                faltam = 360 - dia - 31 - 29 -31-30-31
                
            elif(mes==7):
                faltam = 360 - dia - 31 - 29 -31-30-31-30
    
            elif(mes==8):
                faltam = 360 - dia - 31 - 29 -31-30-31-30-31

            elif(mes==9):
                faltam = 360 - dia - 31 - 29 -31-30-31-30-31-31
     
            elif(mes==10):
                faltam = 360 - dia - 31 - 29 -31-30-31-30-31-31-30
            elif(mes==11):
                faltam = 360 - dia - 31 - 29 -31-30-31-30-31-31-30-31

            elif(mes==12):
                faltam = 360 - dia - 31 - 29 -31-30-31-30-31-31-30-31-30
        
            print("Faltam %d dias para o natal!" %(faltam))
        
    except EOFError:
        break
