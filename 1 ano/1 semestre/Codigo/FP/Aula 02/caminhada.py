t1caminhada= 10

tcorrida= 6*3

t2caminhada = 4*10

total= t1caminhada+tcorrida+t2caminhada

horachegada= 6+(total//60)

minutochegada= 52+(total%60)


if minutochegada >= 60 :
    minutochada=0
    horachegada=horachegada+1 

print(f"{horachegada}:{minutochegada}")
