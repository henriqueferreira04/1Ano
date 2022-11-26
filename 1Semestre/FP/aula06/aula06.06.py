def compareFiles(file1, file2):
    with open(file1, 'r') as file_1:
        with open(file2, 'r') as file_2:

            for n1 in file_1:
                
                for n2 in file_2:
                    
                    if n1 != n2:

                        return 'File {} and {} are differents.'.format(file1, file2)
                        
                    if n1 == n2: break          
                    

                    
    
            return('Files are the same.')

file1 = input('File1: ')
file2 = input('File2: ')
print(compareFiles(file1, file2))
