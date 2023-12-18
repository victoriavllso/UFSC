while True:
    try:
        n, r = input().split()
        n, r = int(n), int(r)
        voltaram = input().split()
        nvoltaram = []
        for i in range(0, len(voltaram)):
            voltaram[i] = int(voltaram[i])
        
        for i in range(1, n+1):
                if i not in voltaram:
                    nvoltaram.append(i)
        if nvoltaram:
            for i in nvoltaram:
                print(i, end=' ')
            print()
            
        else:
            print("*")
    except EOFError:
        break                
1471.py
