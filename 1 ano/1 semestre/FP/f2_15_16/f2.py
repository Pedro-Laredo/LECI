import json

def triagem():
    pacientes = open("pacientes.json")
    pacientes = json.load(pacientes)
    cores = open("cores.json")
    cores = json.load(cores)
    dic_triag = {}
    for cor in cores:
        for sintomas_cores in cores[cor]:
            for pessoa in pacientes:
                if sintomas_cores in pacientes[pessoa]:
                    dic_triag[pessoa] = cor
    return dic_triag,pacientes
pacientes = triagem()[1]
dic_triag = triagem()[0]
for pessoa in dic_triag:
    print(f"{pessoa}->{dic_triag[pessoa]}")

def ordenar(dic_triag):
    vermelho,laranja,amarelo,verde,azul = [],[],[],[],[]
    for paciente in dic_triag:
        if dic_triag[paciente] == "Vermelho":
            vermelho.append(paciente)
        if dic_triag[paciente] == "Laranja":
            laranja.append(paciente)
        if dic_triag[paciente] == "Amarelo":
            amarelo.append(paciente)
        if dic_triag[paciente] == "Verde":
            verde.append(paciente)
        if dic_triag[paciente] == "Azul":
            azul.append(paciente)
    triag_ord = vermelho+laranja+amarelo+verde+azul
    print("Ordem de chamada:")
    n = 0
    for x in triag_ord:
        n+=1
        print("{:<5} {:<22}".format(str(n)+"º:", x))
    return dic_triag

dic_triag_ordenado = ordenar(dic_triag)

def tempo_espera(dic_triag_ordenado,pacientes):
    espera_dic = {}
    minutos = 0
    with open("sintomas.csv","r") as file:
        for line in file:
            line = line.strip().split(",")
            espera_dic[line[0]] = line[1]
    for pessoa in dic_triag_ordenado:
        sintoma = pessoa[dic_triag_ordenado]
        if espera_dic[sintoma] in pacientes[pessoa]:
            print(pessoa,espera_dic[sintoma])
tempo_espera(dic_triag_ordenado,pacientes)
    
    
    
