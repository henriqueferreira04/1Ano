# Complete este programa como pedido no guião da aula.

def listContacts(dic):
    """Print the contents of the dictionary as a table, one item per row."""
    print("{:>12s} : {}".format("Numero", "Nome"))
    for num in dic:
        print("{:>12s} : {}".format(num, dic[num]))

def filterPartName(contacts, partName):
    """Returns a new dict with the contacts whose names contain partName."""
    ...



def menu():
    """Shows the menu and gets user option."""
    print()
    print("(L)istar contactos")
    print("(A)dicionar contacto")
    print("(R)emover contacto")
    print("Procurar (N)úmero")
    print("Procurar (P)arte do nome")
    print("(T)erminar")
    op = input("opção? ").upper()   # converts to uppercase...
    return op

def adicionarContacto(contactos):
    número = input('Número: ')
    nome = input('Nome: ')
    contactos[número] = nome



def removerContacto(contactos):
    número = input('Número a remover: ')
    del contactos[número]
    print('Número Removido')


def procurarNumero(contactos):
    numero = input('Número a encontrar: ')
    if numero in contactos == True:
        print(contactos[numero])
    else:
        print('Número não encontrado.')


def main():
    """This is the main function containing the main loop."""

    # The list of contacts (it's actually a dictionary!):
    contactos = {"234370200": "Universidade de Aveiro",
        "727392822": "Cristiano Aveiro",
        "387719992": "Maria Matos",
        "887555987": "Marta Maia",
        "876111333": "Carlos Martins",
        "433162999": "Ana Bacalhau"
        }
    
    op = ""
    while op != "T":
        op = menu()
        if op == "T":
            print(contactos)
        elif op == "L":
            print("Contactos:")
            listContacts(contactos)
        elif op == 'A':
            adicionarContacto(contactos)
        elif op == 'R':
            removerContacto(contactos)
        elif op == 'N':
            procurarNumero(contactos)

        else:
            print("Não implementado!")

   
    
    

# O programa começa aqui
main()

