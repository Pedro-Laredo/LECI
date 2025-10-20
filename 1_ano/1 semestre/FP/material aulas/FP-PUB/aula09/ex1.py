import sys
d = dict()
with open("wordlist.txt","r") as f:
    f= f.read()
    for linha in f:
        if linha.isalpha() == True:
            if linha not in d:
                d[linha] = 1
            else:
                d[linha] += 1
#dic_sorted = {valor : d[valor] for valor in sorted(d.values())}
#print(dic_sorted)
#print(sorted(d.items(),reverse=True))
sorted_d = dict(sorted(d.items(), key=lambda item: item[1], reverse=True))
print(sorted_d)
