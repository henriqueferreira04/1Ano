s = int(input('Tempo em segundos: '))
horas = s // 3600
resto = s % 3600
min = resto // 60
resto2 = resto % 60
print('{}:{}:{}'.format(horas,min,resto2))
