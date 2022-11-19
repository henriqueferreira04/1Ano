cont = 0
tot = 0
while True:
    n = input('Valor? ')
    if n == '':
        break
    else: 
        n = float(n)
        tot = tot + n
        cont += 1
   
media = tot / cont
print(media)
