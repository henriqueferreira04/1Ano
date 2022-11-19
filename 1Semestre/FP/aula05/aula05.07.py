def polindrome(x):
    lst = []
    tamanho = len(x) - 1
    for i in range(tamanho, -1, -1):
        lst.append(x[i])

    lst = ''.join(lst)
    if x == lst:
        return 'Polindrome'
    else:
        return 'Not Polindrome'

palavra = input('Escreva uma palavra: ')
print(polindrome(palavra))
        
