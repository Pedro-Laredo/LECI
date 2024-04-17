def jogos (equipas):
    partidas=[]
    for equipa_1 in equipas:
        for equipa_2 in equipas:
            if equipa_1 != equipa_2:
                partidas.append((equipa_1,equipa_2))
    return partidas

def pedir_resultados(partidas):
    resultados = {}
    for a in partidas:
        resultado = input(f"Resultado {a}" )
        resultados[a[0],a[1]]= resultado[0],resultado[-1]
    return resultados    

def criar_tabela(equipas,resultados):
    table = {}
    for equipa in equipas:
        data = [0,0,0,0,0,0]
        for game,result in resultados.items():
            




def main ():
    equipas = []
    while True:
        a = input("EQUIPA ")
        if a == "fim":
            break
        else:
            equipas.append(a)
    print(pedir_resultados(jogos(equipas)))


        
main()

