def polinomio():
    for a in range(0, 3):
        pol = a**2 + 2*a + 3
        print('P({}) = {}'.format(a, pol))
        if a == 1:
            pp1 = pol**2 + 3*a + 3
            print('P(P(1)) =', pp1)

polinomio()
