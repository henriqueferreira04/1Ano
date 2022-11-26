# Complete o programa!

# a)
def loadFile(fname, lst):
    with open(fname,'r') as file:
        file.readline()
        for line in file:
            line = line.split('\t')
            aluno =(line)
            aluno[0] = int(aluno[0])
            aluno[2] = int(aluno[2])
            nota3 = aluno[-1] 
            nota31 = nota3[0:4]
            aluno[-1] = float(nota31)
            aluno[-2] = float(aluno[-2])
            aluno[-3] = float(aluno[-3])
            lst.append(aluno)
        
        return lst
    
# b) Crie a função notaFinal aqui...
def notaFinal(lst):
    notas = []
    for n in range(0, len(lst)):
        aluno = lst[n]
        nota1 = aluno[-1]
        nota2 = aluno[-2]
        nota3 = aluno[-3]
        notafinal = int((nota1 + nota2 + nota3)/3)
        notas.append(notafinal)
    
    return notas
    


# c) Crie a função printPauta aqui...
def printPauta(lst, notas):
    with open('pauta.csv','w') as file:
        file.write('{:<20s} {:^} {:>20s}\ln'.format('Número', 'Nome', 'Nota'))
    
        for n in range(0,len(lst)):
            aluno = lst[n]
            file.write('{:5d} {:<5s} {:^}\ln'.format(aluno[0], aluno[1], notas[n]))

# d)
def main():
    lst = []
    # ler os ficheiros
    class1 = loadFile("school1.csv", lst)
    class2 = loadFile("school2.csv", lst)
    class3 = loadFile("school3.csv", lst)
    notas = notaFinal(class1)
    
    
    # ordenar a lista
    
    
    # mostrar a pauta
    
    

# Call main function
if __name__ == "__main__":
    main()


