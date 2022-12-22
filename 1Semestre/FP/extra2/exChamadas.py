def validChamada(numero):
    numero = str(numero)
    if len(numero) >= 3 and numero.isdigit() == True:
        return True
    elif numero[0] == '+':
        if numero[1:].isdigit() == True and len(numero) >= 4:
            return True
    else:
        return False
    


def registeChamada():
    
    while True:
        origem = int(input('Telefone origem? '))
        if validChamada(origem) == True:
            break
    
    while True:
        destino = int(input('Telefone destino? '))
        if validChamada(destino) == True:
            break

    duracao = int(input('Duração (s)? '))
    


def lerFicheiro(fich):
    with open(fich, 'r') as ficheiro:
        dictOrigem = {}
        
        for linha in ficheiro:
            linha = linha.split()
            if linha[0] not in dictOrigem:
                dictOrigem[linha[0]] = [(linha[1], linha[2])]

            else:
                dictOrigem[linha[0]].append((linha[1], linha[2]))
            
        return dictOrigem

            
def listaClientes(clientes):
    lstClientes = sorted(clientes.keys())
    numClientes = len(lstClientes)
    for cliente in lstClientes:
        if lstClientes.index(cliente) == 0:
            print('Clientes: ',cliente, end=' ')
        elif lstClientes.index(cliente) == numClientes-1:
            print(cliente,'\n')
        else:
            print(cliente, end=' ')

    return lstClientes



def fatura(dicionario):
    while True:
        cliente = input('Cliente? ')
        if cliente in dicionario:
            break
    
    print('{:<13s} {:6s} {:>4s}'.format('Destino', 'Origem', 'Custo'))
    
    custoTotal = 0
    lstchamadas = (dicionario[cliente])   

    for (k, v) in lstchamadas:
        if k[0] == '2':
            custo = (int(v)/60) * 0.02
        elif k[0] == '+':
            custo = (int(v)/60) * 0.8
        elif k[0:2] == cliente[0:2]:
            custo = (int(v)/60) * 0.04
        else:
            custo = (int(v)/60) * 0.1

        print('{:<13s} {:>6s} {:.2f}'.format(k, v, custo))
        custoTotal += custo

    print('{:>20s} {:.2f}'.format('Total: ',custoTotal))



def main():

    print('1) Registar chamada')
    print('2) Ler ficheiro')
    print('3) Listar clientes')
    print('4) Fatura')
    print('5) Terminar\n')

    while True:
        opcao = int(input('Opção? '))

        if opcao == 1:
            registeChamada()
        if opcao == 2:
            ficheiro = str(input('Ficheiro? '))
            clientes = lerFicheiro(ficheiro)
        if opcao == 3:
            lstclientes = listaClientes(clientes)
        if opcao == 4:
            fatura(clientes)
        if opcao == 5:
            print('Fim')
            break
        
        

main()