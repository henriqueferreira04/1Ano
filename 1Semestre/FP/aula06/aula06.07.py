import os
def filesSize(dir):
    lst = os.listdir(dir)
    
    path = '/Users/hemapefe/Desktop/1Ano/1Semestre/FP/aula06/'
    os.chdir(path)

    for file in lst:
        print(file, os.stat(file).st_size)


diret = input('Diretório: ')

print(filesSize(diret))