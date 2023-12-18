while True:
    try:
        a, b, c = input().split()
        a, b, c = int(a), int(b), int(c)
        
        if a == b == c:
            print("*")
        elif (a == b):
            print("C")
        elif (b == c):
            print("A")
        elif (a == c):
            print("B")
    except EOFError:
        break
    
