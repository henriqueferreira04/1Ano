def readfile(fname):
    jornadas = {}
    with open(fname, 'r') as file:
        for line in file:
            line = line.strip().split(',')
            jor, casa, fora = int(line[0]), line[1], line[2]
           
            if jor not in jornadas:
                jornadas[jor] = [(casa, fora)]
            
            else:
                jornadas[jor].append((casa, fora))

        return jornadas


def interface(jornadas):
    while True:
        jornada = int(input('Jornada? '))
        if jornada in jornadas:
            break
        else:
            print('Jornada inválida!')

    jogosJornada = jornadas[jornada]
    count = 1
    for jogo in jogosJornada:
        while True:
            aposta = input('{} {} vs {}: '.format(count, jogo[0], jogo[1])).upper()
            if aposta == '1' or aposta == '2' or aposta.upper() == 'X':
                break
            else:
                print('Aposta inválida!')
                
        if count == 1:
            with open('jornada{}.csv'.format(jornada), 'w') as file:
                file.write('{}, {}\n'.format(count, aposta))
        else:
            with open('jornada{}.csv'.format(jornada), 'a') as file:
                file.write('{}, {}\n'.format(count, aposta))
        count += 1

    return 'jornada{}.csv'.format(jornada), jornada
    

def resultados(newfile, jornadas):
    print('Jornada {}'.format(newfile[1]))
    jornada = jornadas[newfile[1]]
    jogos = 9 * (newfile[1] - 1)
    
    with open(newfile[0], 'r') as file:
        with open('Jogos.csv', 'r') as file2:
            for line1, line2 in zip(file, file2):
                line1 = line1.strip().split(',')
                line2 = line2.strip().split(',')
                
                while jogos > 1:
                    file2.readline()
                    jogos -= 1

                casa, fora = line2[1], line2[2]
                vcasa, vfora = line2[3], line2[4]
                print(casa, fora)
                print(jornada)
                if (casa, fora) in jornada:
                    
                    if vcasa > vfora:
                        resultado = 1
                    elif vcasa < vfora:
                        resultado = 2
                    elif vcasa == vfora:
                        resultado = 'X'
                            
                    if resultado == line1[1]:
                                
                        aposta = '(CERTO)'

                    if resultado != line1[1]:
                        print(line1[1], resultado)
                                
                        aposta = '(ERRADO)'
                            
                    print('{} {} {}-{} {} : {} {}'.format(line1[0], casa, line2[3], line2[4], fora, line1[1], aposta))
                        
           
                        
            
                


    



        

def main():
    jornadas = readfile("Jornadas.csv")
    newfile = interface(jornadas)
    resultados(newfile, jornadas)



main()