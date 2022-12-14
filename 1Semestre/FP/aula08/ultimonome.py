with open('names.txt', 'r') as file:
    file.readline()
   
    ultimoNome = {line.split()[-1] : {line.split()[0]} for line in file}
      
    print(ultimoNome)

        