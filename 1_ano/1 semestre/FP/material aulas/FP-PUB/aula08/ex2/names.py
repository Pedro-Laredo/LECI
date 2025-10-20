import sys
d = dict()
with open(sys.argv[1], 'r', encoding="utf8") as fin:
    fin.readline()
    names=[]
    for line in fin:
        line = line.rstrip()
        names.append(line)



lastnames = []
for name in names:
    splitname = name.split(sep=' ')
    lastname = splitname[-1] 
    lastnames.append(lastname)


firstnames= []
for name in names:
    splitname = name.split(sep= ' ')
    primnome = splitname[0]
    firstnames.append(primnome)




dicts = {}

for a,b in zip(firstnames,lastnames):
    if b not in dicts:
        dicts[b]= a + ' '
    else:
        dicts[b] += a + ' '

print(dicts)

