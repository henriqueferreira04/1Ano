n = int(input('Quer a soma de quantos termos: '))
a = 1
m = 1
serie = 1
for n in range(1, n + 1):
    a = a + 2
    serie = serie - (m / a)
    m = -m
print('O somatório dos {} primeiros termos é {}'.format(n, serie))
