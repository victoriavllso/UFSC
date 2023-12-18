while True:
    try:
        v = list(map(int, input().split()))
        v.sort()

        if v[2] ** 2 == v[0] ** 2 + v[1] ** 2:
            mdc = 1

            for div in range(2, v[0] + 1):
                if v[0] % div == 0 and v[1] % div == 0 and v[2] % div == 0:
                    mdc = div

            if mdc == 1:
                print("tripla pitagorica primitiva")
            else:
                print("tripla pitagorica")
        else:
            print("tripla")
    except EOFError:
        break