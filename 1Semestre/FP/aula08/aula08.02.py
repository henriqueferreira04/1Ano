with open('names.txt','r') as file:
    apelidos = {}
    for line in file:
        lista = line.split()
        
        if lista[-1] in apelidos:
            
            apelidos[lista[-1]].add(lista[0])
        else:
            apelidos[lista[-1]] = {lista[0]}

for name in apelidos.keys():
    print(name, ' = ', apelidos[name])
    