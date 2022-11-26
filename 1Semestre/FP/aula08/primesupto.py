def primesUpTo(n):
    numeros = []
    while n > 0:
        numeros.append(n)
        n -= 1

    for i in numeros, -1:
        mult2 = math.sqrt(n)
        mult3 = math.pow()


        
        if 2*i in numeros:
            numeros.pop(2*n)
        if 3*i in numeros:
            numeros.pop(3*n)
        if 5*i in numeros:
            numeros.pop(4*n)
        if 7*i in numeros:
            numeros.pop(7*n)

    return numeros
def main():
    # Testing:
    s = primesUpTo(1000)
    print(s)

    # Do some checks:
    assert primesUpTo(30) == {2,3,5,7,11,13,17,19,23,29}
    assert len(primesUpTo(1000)) == 168
    assert len(primesUpTo(7918)) == 999
    assert len(primesUpTo(7919)) == 1000
    print("All tests passed!")

if __name__ == "__main__":
    main()

