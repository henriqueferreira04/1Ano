numeros = []
num = int(input('Primos até que número: '))
for n in range(2, num+1):
    numeros.append(n)


def primesUpTo(numeros, num):
    numeros = set(numeros)
    mult2 = [numero * x for numero in range(2, num+1) for x in range(2, num+1) if numero*x< num+1]
    primos = [num for num in numeros if num not in mult2]
    return primos
    
print(primesUpTo(numeros, num))