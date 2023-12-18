def valido(n):
    while n > 0:
        if n % 10 == 3:
            return 1 #se for válido retorna 1
        n //= 10
    return 0 #caso cntrário, retorna 0
while True:
    try:
        n = int(input())
        num = 0
        fib = [0] * 1020
        fib[0] = 0
        fib[1] = 1

        for i in range(2, 1001):
            fib[i] = fib[i - 1] + fib[i - 2]

        while n > 0:
            i = 2
            while i <= 1000:
                if valido(fib[i]) or fib[i] % 3 == 0:
                    n -= 1
                if n == 0:
                    break
                i += 1
            num = fib[i]

        print(num)
    except EOFError:
        break
