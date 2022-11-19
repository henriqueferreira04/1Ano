def inputFloatList():
    list = []

    while True:
        a = input('Escreve um número: ')
        if a == '': 
            break
        num = float(a)
        list.append(num)

    return list


def countLower(lst, v):
    count = 0
    for i in lst:
        if v > i:
            count = count + 1
    
    return count

        

def minmax(lst):
    max = lst[0]
    min = lst[0]
    for i in lst:

        if max < i:
            max = i
        elif min > i:
            min = i
    
    return max, min

lista = inputFloatList()
print(lista)

a, b = minmax(lista)
print(a, b)

vMedio = (a + b) / 2

print(countLower(lista,vMedio))




