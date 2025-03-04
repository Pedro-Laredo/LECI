
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
    for NAME,DATE,OPEN,MAX,MIN,CLOSE,VOLUME in lst:
        VOLUME = float(VOLUME)
        if NAME in totVol:
            totVol[NAME] += VOLUME
        else:
            totVol[NAME] = VOLUME
    return totVol


def maxValorization(lst):
    vMax = {}
    for NAME,DATE,OPEN,MAX,MIN,CLOSE,VOLUME in lst:
        OPEN= float(OPEN)
        CLOSE = float(CLOSE)
        valorizacao = OPEN - CLOSE
        if DATE in vMax:
            if valorizacao > vMax[DATE][1]:
                vMax[DATE] = (NAME, valorizacao)
        else:
            vMax[DATE] = (NAME, valorizacao)
            

    return vMax

def stocksByDateByName(lst):
    dic = {}
    
    for NAME, DATE, OPEN, MAX, MIN, CLOSE, VOLUME in lst:
        if DATE not in dic:
            dic[DATE] = {}
        
        if NAME not in dic[DATE]:
            dic[DATE][NAME] =(OPEN, MAX, MIN, CLOSE, VOLUME)
    
    return dic

def portfolioValue(stocks, portfolio, date):
    assert date in stocks
    val = 0.0
    # Complete ...

    return val

if __name__ == "__main__":
    main()
