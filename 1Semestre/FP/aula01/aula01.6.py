x1 = float(input('Coordenada em x do ponto A: '))
y1 = float(input('Coordenada em y do ponto A: '))

x2 = float(input('Coordenada em x do ponto B: '))
y2 = float(input('Coordenada em y do ponto B: '))

import math
abx = x2-x1
aby = y2-y1
d = math.sqrt(abx**2 + aby**2)
print('A distância entre o ponto A e B é {:.1f}.'.format(d)) 
