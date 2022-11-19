def countdown(n):
    assert n > 0
    while n >= 0:
        print (n)
        n = n -1

n = int(input('Número positivo: '))
countdown(n)