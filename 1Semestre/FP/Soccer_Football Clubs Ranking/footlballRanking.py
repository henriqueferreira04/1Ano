import os

def readfile():
    with open('soccer_Football Clubs Ranking.csv', 'r') as file:
        file.readline()
        clubs = []
        for line in file: 
            line = line.strip().split(',')
            ranking, clubName, country, pointScore, yearChange, previousPointScored, symbolChange = int(line[0]), line[1], line[2], int(line[3]), int(line[4]), int(line[5]), line[6]
            if (ranking, clubName, country, pointScore, yearChange, previousPointScored, symbolChange) not in clubs:
                clubs.append((ranking, clubName, country, pointScore, yearChange, previousPointScored, symbolChange))
        
        return clubs



def searchByCountry(clubs):
    country = input('Country? ').upper()
    CountryClubs = []
    for club in clubs:
        if country == club[2].upper():
            print('{} {} {}'.format(club[1], club[0], club[3]))
            CountryClubs.append((club[1], club[0], club[3]))
    
    return CountryClubs





def register(clubs):
   
   with open('register.csv', 'w') as file:
        for club in clubs:
            file.write('{} {} {}\n'.format(club[0], club[1], club[2]))



def dictCountryClubs(clubs):
    dict = {}
    for club in clubs:
        if club[2] not in dict:
            dict[club[2]] = [club[1]]
        
        else:
            lst = dict[club[2]]
            lst.append(club[1])    
    
    return dict



def highestEvolutionCLub(clubs):
   
    max = 0
    count = 0
    for club in clubs:
        count += 1
        if club[4] > max:
            max = club[4]
            clubmax = club[1]

    return clubs[count-1]
        

    
def searchClub(clubs, clubToSearch):
    

    for club in clubs:
        
        if club[1].upper() == clubToSearch:
            return(club)
            

    print('This club was not found!') 
    
    
def rankingByCountry(dictCountry, lstclubs):
    rankings = {}
    for country, clubs in dictCountry.items():
        count = 0
        rankings[country] = 0
        for club in clubs:
            statsclub = searchClub(lstclubs, club.upper())
            rankings[country] += statsclub[0]
            count += 1
     
        rankings[country] = rankings[country] / count
    
    print('{:30s} {:20s}\n'.format('Country', 'Ranking'))
    
    for country, ranks in sorted(rankings.items(), key=lambda x: x[1], reverse=False):
        print('{:30s} {:5d}'.format(country, int(ranks)))



def main():
    print('{}\n\n {}\n {}\n {}\n {}\n {}\n {}\n {}\n {}\n'.format('MENU','Read File (A)','Search a Country (B)', 'Register (C)', 'Create Dictionary to the Country selected (D)', 'Highest Evolution Club (E)', 'Search a Club (F)', 'Rankings of each Country (G)','Finish (0)'))
    
    while True:
        option = input('Option? ').upper()

        if option == 'A': 
            clubs = (readfile()) 
            print('The file has been read.') 
        elif option == 'B':
            CountryClubs = searchByCountry(clubs)
        elif option == 'C':
            register(CountryClubs)
            print('It has been register in file named (register.csv).')  
        elif option == 'D':
            dictCountry = dictCountryClubs(clubs)
            print('A dictionary has been created.')  
        elif option == 'E':
            print(highestEvolutionCLub(clubs))
        elif option == 'F':
            clubToSearch = input('Club: ').upper()
            print('{}\n'.format(searchClub(clubs, clubToSearch)))
        elif option == 'G':
            rankingByCountry(dictCountry, clubs)
        elif option == '0':
            break

main()