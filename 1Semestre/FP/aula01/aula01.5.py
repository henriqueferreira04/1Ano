c1 = float(input('Tamanho cateto 1: '))
c2 = float(input('Tamnaho do cateto 2: '))
import math
h = math.sqrt(c1**2 + c2**2)
print('A hipotenusa é igual a {:.2f}'.format(h))
cos = c1/h
rad = math.acos(cos)
a = (rad * 180)/math.pi
print('O ângulo do c1 com a hipotenusa é {:.2f}º.'.format(a))



