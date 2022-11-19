import sys

with open(sys.argv[1],'r') as file:
    d = {}
    
    for line in file:
        
        for character in line:

            character = character.lower()
            if character.isalpha():

                if character in d:
                    d[character] += 1

                else:
                    d[character] = 1
                

alphabetic = d.values()
order = alphabetic.sort()
for order2 in order:
    print(order2,'', d[order2])
    








