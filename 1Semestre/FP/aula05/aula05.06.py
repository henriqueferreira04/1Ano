def abreviada(lst):
    lst.split()
    abreviatura = []
    for i in range(0, len(lst)):
        if lst[i].isupper() == True:
            abreviatura.append(lst[i])
        
    abreviatura = ''.join(abreviatura)
    return abreviatura

lst = input('Escreva: ' )
print(abreviada(lst))

