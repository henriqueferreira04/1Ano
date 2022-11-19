m1 = 2 * 3
m2 = 2 * 6
m3 = 2 * 9

diam = m1 +m2 + m3
km = diam * 10**-3
ano = km * 365
print('O elevador do prédio de 3 andares e 1 pessoa em cada andar percorre {:.2f}km num ano.'.format(ano))

anoemseg = diam * 365 
h = anoemseg // 3600
print('O elevador teve ligado {} horas num ano.'.format(h))


import math

a = int(input('Quantos andares existem no prédio: '))
p = int(input('Quantas pessoas existem por andar: '))

dia = math.factorial(a) * p * 2 * 3
kmano = (dia * 10**-3) * 365
print('O elevador do prédio de {} andares e {} em cada andar percorre {:.2f}km.'.format(a, p, kmano))

tempo = (dia * 365) // 3600
print('O elevador teve ligado {} horas num ano.'.format(tempo))
