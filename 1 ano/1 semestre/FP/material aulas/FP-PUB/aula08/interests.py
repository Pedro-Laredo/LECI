



def main():
    A = "reading"
    B = "eating"
    C = "traveling"
    D = "writing"
    E = "running"
    F = "music"
    G = "movies"
    H = "programming"

    interests = {
        "Marco": {A, D, E, F},
        "Anna": {E, A, G},
        "Maria": {G, D, E},
        "Paolo": {B, D, F},
        "Frank": {D, B, E, F, A},
        "Teresa": {F, H, C, D}
        }
        
    print("a) Table of common interests:")
    commoninterests = {
        }
    for nome in interests:
        for nome2 in interests:
            if nome > nome2: #garantir que os nomes nao se repetem
                interesses = interests[nome].intersection(interests[nome2])
                commoninterests[nome,nome2]= interesses

    [print(a,":", b) for a,b in commoninterests.items()] #organizar tabela verticalemnte

    maxvalue = max(len(a) for a in commoninterests.values())
    print(maxvalue)

    print("c) Pairs with maximum number of matching interests:")
    maxmatches= [nome for nome,interesse in commoninterests.items() if len(interesse)==maxvalue]
        
        
    print(maxmatches)

    print("d) Pairs with low similarity:")
    lowJaccard = [nome for nome,interesse in commoninterests.items() if len(interesse)<maxvalue]
    [print(a)for a in lowJaccard]


# Start program:
main()

