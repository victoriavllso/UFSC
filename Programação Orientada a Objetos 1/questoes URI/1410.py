while True:
    atacantes, defensores = map(int, input().split())
    if atacantes == defensores == 0:
        break
    da = list(map(int, input().split()))
    da.sort()    
    dd = list(map(int, input().split()))
    dd.sort()
    
    if da[0] < dd[0] or da[0] < dd[1]:
        print('Y')
    else:
        print('N')
