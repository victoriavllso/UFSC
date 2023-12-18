while True:
    n = int(input())
    if n == 0:
        break

    h = input().split()
    for i in range(n):
        h[i] = int(h[i])

    # transforma a lista em uma sequência cíclica adicionando o primeiro 
    h.append(h[0])
    h.insert(0, h[n-1])

    pico = 0
    for i in range(1, n+1):
        if h[i] < h[i-1] and h[i] < h[i+1]:
            pico += 1
        if h[i] > h[i-1] and h[i] > h[i+1]:
            pico += 1

    print(pico)
