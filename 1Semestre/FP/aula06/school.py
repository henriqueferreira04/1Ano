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
            print(student)
            
    
# b) Crie a função notaFinal aqui...
def notaFinal(turma):
    


    
    



# c) Crie a função printPauta aqui...


# d)
def main():
    lst = []
    # ler os ficheiros
    class1 = loadFile("school1.csv", lst)
    class2 = loadFile("school2.csv", lst)
    class3 = ("school3.csv", lst)
    notaFinal(class1)
    notaFinal(class2)
    notaFinal(class3)
    
    
    # ordenar a lista
    ...
    
    # mostrar a pauta
    ...


# Call main function
if __name__ == "__main__":
    main()


