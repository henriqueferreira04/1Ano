n = int(input('Até que número de Fibonacci: '))
ff = 0
f1 = 1

for f in range(0, n + 1):
    ff = ff + f1
    f1 = ff - f1
    
    print(ff)
