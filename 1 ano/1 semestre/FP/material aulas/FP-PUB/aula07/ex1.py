import sys
a= open(sys.argv[1],'r',encoding="utf8")
a = a.read()
d = {}
for b in a:
    if b.isalpha()==True:
        b = b.lower()
        if b not in d:
            d[b]= 1
        else:
            d[b] +=1
dicionario_ordenado = {chave: d[chave] for chave in sorted(d)}
print(dicionario_ordenado)
