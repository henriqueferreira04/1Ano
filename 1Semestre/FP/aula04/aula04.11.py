lstdiv = []

def numInt(num):
    sumdiv = 0
    for div in range(1, num-1):
        if num % div == 0:
            lstdiv.append(div)


    for i in range(0, len(lstdiv)):
        sumdiv = sumdiv + lstdiv[i]


    if sumdiv < num:
        numint = 'Deficiente'
    elif sumdiv == num:
        numint = 'Perfeito'
    else:
        numint = 'Abundante'
    
    return numint

n = int(input('Escreve um número: '))
print(numInt(n))



        
