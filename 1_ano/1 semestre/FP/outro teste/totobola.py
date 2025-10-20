def verificar_jornada():
    dados = []
    jornadas = {}
    jornada = 1
    with open("Jogos.csv","r") as file:
        for line in file:
            line = line.strip().split(",")
            dados.append(line)

    for a in range(0,len(dados),9):
        jornadas[jornada] = dados[a:a+9]
        jornada +=1
    return jornadas

def imprimir(jornadas):
    jogo = 0
    while True:
        valor = int(input("Jornada? "))
        lista_jornadas = jornadas.keys()
        if valor in lista_jornadas:
            break
        else:
            print("Jornada sem resultados")
            continue
    resultado_jornada = []
    for a in jornadas[valor]:
        jogo +=1
        equipa1 = a[1]
        equipa2 = a[2]
        golos_1 = a[3]
        golos_2 = a[4]
        if golos_1>golos_2:
            resultado = 1
        elif golos_1<golos_2:
            resultado = 2
        else:
            resultado = "X"
        resultado_jornada.append(str(resultado))
        print("{:<15} {:^20} {:^5} {:^5} {:^20} {:>10}".format(jogo, equipa1, golos_1, golos_2, equipa2, resultado))
    with open(f"apostas{valor}.csv","r") as file:
        lista_boletim = []
        boletins = 0
        for line in file:
            boletins += 1
            line = line.strip().split(",")
            lista_boletim.append(line)
        boletins = len(lista_boletim)
        receita = boletins*0.4
        montante_disponivel = receita *0.6
        print("{:<20}{:^20}".format("Num boletins",boletins))
        print("{:<20}{:^20}".format("Num apostas",boletins))
        print("{:<20}{:^20}".format("Receita",receita))
        print("{:<20}{:^20}".format("Montante premios",montante_disponivel))
    premio_1 = 0
    premio_2 = 0
    premio_3 = 0
    for boletim in lista_boletim:
        acertos = 0
        for aposta,resultado in zip(boletim[1:],resultado_jornada):
            if aposta == resultado:
                acertos +=1 
        if acertos == 9:
            premio_1 += 1
        elif acertos == 8:
            premio_2 += 1
        elif acertos == 7:
            premio_3 += 1


    print(premio_1,premio_2,premio_3)


        






jornadas = verificar_jornada()
imprimir(jornadas)






