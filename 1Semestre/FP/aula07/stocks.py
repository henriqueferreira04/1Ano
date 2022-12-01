
# Constantes para indexar os tuplos:
NAME,DATE,OPEN,MAX,MIN,CLOSE,VOLUME = 0,1,2,3,4,5,6

def main():
    lst = loadStockFile("nasdaq.csv")
    # Show just first and last tuples:
    print("first:", lst[1])
    print("last:", lst[-1])
    
    print("a) totVol=", totalVolume(lst))

    print("b) maxVal=", maxValorization(lst))
    
    stocksDic = stocksByDateByName(lst)
    print("c) CSCO@11:", stocksDic['2020-10-12']['CSCO'])
    print("c) AMZN@22:", stocksDic['2020-10-22']['AMZN'])

    port = {'NFLX': 100, 'CSCO': 80}
    print("d) portfolio@01:", portfolioValue(stocksDic, port, "2020-10-01"))
    print("d) portfolio@30:", portfolioValue(stocksDic, port, "2020-10-30"))

def loadStockFile(filename):
    lst = []
    with open(filename) as f:
        for line in f:
            parts = line.strip().split('\t')
            name = parts[NAME]
            date = parts[DATE]
            tup = (name, date, float(parts[OPEN]), float(parts[MAX]),
                float(parts[MIN]), float(parts[CLOSE]), int(parts[VOLUME]))
            lst.append(tup)
            
    return lst

def totalVolume(lst):
    totVol = {}
    # Complete ...
    for linha in lst:
        
        if linha[0] in totVol:
            totVol[linha[0]] += linha[6]
        else:
            totVol[linha[0]] = linha[6]


    return totVol

def maxValorization(lst):
    vMax = {}
    # Complete ...
    for linha in lst:
        valorizacao = (linha[5] / linha[2]) 
        if linha[1] in vMax:
            
            valor = vMax[linha[1]][1]
            print(valor)
            if valorizacao > valor:
                vMax[linha[1]] = (linha[0],valorizacao)

        else:
            vMax[linha[1]] = (linha[0], valorizacao)


    return vMax

def stocksByDateByName(lst):
    dic = {}
    # Complete ...
    for linha in lst:
            dic[linha[1],linha[0]] = linha

   
    return dic

def portfolioValue(stocks, portfolio, date):
    assert date in stocks
    val = 0.0
    # Complete ...

    return val

if __name__ == "__main__":
    main()
