def morePop(countries, N):
    lst2 = []
    lst1=[("Grenada", "Na", 344.0, 108825),("Portugal", "Eu",1000,11000000)]
    for a in range(len(lst1)):
        if N < lst1[a][3]:
            lst2.append(lst1[a])
    lst2 = sorted(lst2, key= lambda t :t[2]/t[3])
    return(lst2)
print(morePop(countries=" ", N=1088))





stocks = [("Nome","cidade",34,37,39)]

stocks2 =sorted(stocks, key=lambda t: (t[0],-t[4] if t[4] else 0))


