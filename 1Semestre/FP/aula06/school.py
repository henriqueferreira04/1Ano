# Complete o programa!

# a)
def loadFile(fname, lst):
    with open(fname,'r') as file:
        
        for line in file:
            student = []
            campo = line.split('\t')
            for n in campo:
                if n.isdigit():
                    n = int(n)
                    student.append(n)
                else:
                    student.append(n)
            student = tuple(student)
            print(notaFinal(student))

        

            
    
# b) Crie a função notaFinal aqui...
def notaFinal(student):
    
    nota1 = student[5]
    nota2 = student[6]
    nota3 = student[7]
    notaFinal = (nota1 + nota2 + nota3)/3
    return notaFinal



# c) Crie a função printPauta aqui...


# d)
def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    
    
    # ordenar a lista
    ...
    
    # mostrar a pauta
    ...


# Call main function
if __name__ == "__main__":
    main()


