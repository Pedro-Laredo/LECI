
equipas= ["FCP" , "BFC" , "SCP" ]
def jogos ():
    partidas = []
    for i in range(len(equipas)):
        for j in range(i+1):
            if i !=j:
                comb = equipas[ i ] + equipas[ j ]
                
        
    print (comb)
        
def main ():
    jogos()

main()