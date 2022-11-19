def mdc(a,b):
    while mdc(a, b) is True:
        r = a % b
        if r == 0:
            return b
        else:
            mdc(b, r)
        

n1 = int(input('N1: '))
n2 = int(input('N2: '))

print('O m.d.c de {} e {} é {}'.format(n1, n2, mdc(n1, n2)))
