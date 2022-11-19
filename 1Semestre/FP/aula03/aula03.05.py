def maior2(n1, n2):
    if n1 > n2:
        return n1
    elif n2 >= n1:
        return n2

a = int(input('N1: '))
b = int(input('N2: '))
c = int(input('N3: '))

def maior3(n1, n2, n3 ):
    if maior2(n1, n2) > n3:
        return maior2(n1, n2)
    elif n3 >= maior2(n1, n2):
        return n3

print('O maior número entre os inseridos é ', maior3(a, b, c))
