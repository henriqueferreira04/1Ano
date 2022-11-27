lst  = []

while True:
    equipa = input('Equipa(Press Enter to finish):')
    if equipa not in lst:
        lst.append(equipa)
    elif equipa == '':
        lst.pop()
        break



def Jogos(lst):
    jogos = []
    for equipa1 in lst:
        for equipa2 in lst:
            if equipa1 != equipa2:
                jogo = (equipa1, equipa2)
                jogos.append(jogo)

    return jogos


jogos = (Jogos(lst))

def Resultados(jogos):
    resultados = {}
    for jogo in jogos:
        equipa1 = int(input('Resultado jogo, {}(x y): '.format(jogo)))
        equipa2 = int(input('                                 '))
        resultados[jogo] = (equipa1, equipa2)
        
    return resultados

resultados = Resultados(jogos)



tabela = {}
vitder = {}
for jogo in resultados:
    for equipa in lst:
        posicao = lst.index(equipa)
        golos = resultados[jogo]
        if jogo[0] == lst[posicao]:
        
            if jogo[0] not in tabela:
                golos1 = golos[0]
            else:
                golos1 = golos[0] + tabela[jogo[0]]

            tabela[jogo[0]] = golos1

        if jogo[1] == lst[posicao]:

            if jogo[1] not in tabela:
                golos2 = golos[1]
            else:
                golos2 = golos[1] + tabela[jogo[1]]

            tabela[jogo[1]] = golos2

        if golos[0] > golos[1]:
            if jogo[0] not in vitder:
                vitder[jogo[0]] = [1,0,0]
                resultado = vitder[jogo[0]]
            else:
                resultado = vitder[jogo[0]]
                resultado[0] += 1
        
        elif golos[0] < golos[1]:
            if jogo[0] not in vitder:
                vitder[jogo[0]] = [0,0,1]
                resultado = vitder[jogo[0]]
            else:
                resultado = vitder[jogo[0]]
                resultado[2] += 1

        else:
            if jogo[0] not in vitder or jogo[1] not in vitder:
                vitder[jogo[0]] = [0,1,0]
                vitder[jogo[1]] = [0,1,0]
                resultado = vitder[jogo[0]]
            else:
                
                resultado[1] += 1

print(tabela)
print(vitder)
        




            

