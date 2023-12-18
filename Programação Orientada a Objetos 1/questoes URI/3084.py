while True:
    try:
        h, m = input().split() #le os dados em angulo
        h, m = int(h), int(m)
    except:
        break
    angulo_h = (h/360)*12
    angulo_m = m/360*60
    
    hora = int(angulo_h)
    minuto = int(angulo_m)
    
    print("%.2d:%.2d"%(hora,minuto))
