
# Calcula o factorial de n, baseado na recorrencia n! = n*(n-1)!.
# Mas não termina!  Detete a causa e corrija o erro.
from traced import traced 


def fact(n):
    if n > 0:
        res = n*fact(n-1)
    else:
        res = 1

    return res


# Calcula o maximo divisor comum entre a e b.
# Baseia-se no algoritmo de Euclides.
# Mas não termina!  Detete a causa e corrija o erro.

def gcd(a, b):
    if b == 0:
        return a
    if b > a%b:
        return gcd(b, a%b)
    return gcd(a%b, b)


def main():
    print( fact(4) )    # 24
    print( fact(5) )    # 120

    x = 2*27*53*61
    y = 2*2*17*23*53
    print(x, y, gcd(x, y))
    assert gcd(x, y) == 2*53

if __name__ == "__main__":
    main()

