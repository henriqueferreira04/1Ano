def readfile(filename):
    with open(filename, 'r') as file:
        dictjornada = {}
        for line in file:
            line = line.strip().split(',')
            if line[0] not in dictjornada:
                dictjornada[line[0]] = [(line[1], line[2])]
            else:
                dictjornada[line[0]].append((line[1], line[2]))
        
    return dictjornada


def interface(jornadas):
    count = 1
    lstaposta = []
    while True:
        jornada = input('Jornada? ')
        if jornada not in jornadas:
            print('Jornada Inválida!')
        else:
            break

    jogos = jornadas[jornada]

    for jogo in jogos:
        while True:
            aposta = input('{} {} vs {}: '.format(count, jogo[0], jogo[1])).upper()
       
            if aposta == '1' or aposta == '2' or aposta == 'X':
                break
                
            else:
                print('Aposta Inválida!')
                
        lstaposta.append((count, aposta))
        count += 1
    
    with open('jornadas{}.csv'.format(jornada), 'w') as file:
        for line in lstaposta:
            file.write('{} \n'.format(line))
    
    return jornada, lstaposta
    
    



def resultados(filename, jornada, aposta):
    with open(filename, 'r') as file:
        count = 0
        certos = 0
        jornadaescolhida = 1
        for line in file:
            line = line.strip().split(',')
            count += 1
            if count == 10:
                count = 0
                jornadaescolhida += 1

            if jornadaescolhida == int(jornada):
                casa = int(line[3])
                fora = int(line[4])
                
                if casa > fora:
                    resultado = '1'
                    
                elif casa < fora:
                    resultado = '2'
                else:
                     resultado = 'X'
                
                if resultado == aposta[count-1][1]:
                    ganhos = 'CERTO'
                    certos += 1
                else:
                    ganhos = 'ERRADO'
            
                if count == 1:
                    print('\nJornada', jornada,'\n')
                print('{} {:>15s} {:4d}-{:<4d} {:<15s} : {} ({:<5s})'.format(count, line[1], casa, fora, line[2], aposta[count-1][1], ganhos))

    if certos == 9:
        print('Tem 9 certas. Parabéns ganhou o 1º prémio .')
    elif certos == 8:
        print('Tem 8 certas. Parabéns ganhou o 2º prémio.')
    elif certos == 7:
        print('Tem 7 certas. Parabéns ganhou o 3º prémio:')
    else:
        print('\nTem {} certas. Não ganhou prémio.'.format(certos))

              






def main():
    jornadas = readfile('jornadas.csv')
    jornada, aposta = interface(jornadas)
    resultados('Jogos.csv', jornada, aposta)



main()
