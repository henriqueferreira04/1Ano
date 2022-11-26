import sys

with open('pg3333.txt','r') as file:
    d = {}
    
    for line in file:
        
        for character in line:

            character = character.lower()
            if character.isalpha():

                if character in d:
                    d[character] += 1

                else:
                    d[character] = 1
                

for i in sorted(d):
    print(i, d[i])
    








