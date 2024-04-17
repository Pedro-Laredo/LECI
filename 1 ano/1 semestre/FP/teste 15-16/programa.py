
def veri_num(num):
    with open("caderno.txt","r") as file:
        for line in file:
            line = line.strip().split(",")
            if int(line[0]) == num:
                return True
    return False

def total_votos():
    with(open("caderno.txt","r")) as file:
        return(len(file.readlines()))


def contar_votos():
    dem = 0
    rep = 0
    lib = 0
    branco = 0
    while True:
        num = input("Número ")
        if num == "fim":
            break
        if veri_num(int(num)) ==True:
            print(" 1-democratas \n 2-republicanos \n 3-Liberais \n 0-Branco")
            voto = int(input("Digite o n.º correspondente ao seu voto: _"))
            if voto == 1:
                dem +=1
            elif voto ==2:
                rep +=1
            elif voto ==3:
                lib += 1
            else:
                branco +=1
            
        else:
            print("Introduza um numero valido")
    return dem,rep,lib,branco


def final():
    votos = contar_votos()
    total = total_votos()
    abstencao = (total- sum (votos))/total*100
    a = votos[0]
    b = votos[1]
    c = votos[2]
    tot_validos = a+b+c
    perc_demo = ((a / tot_validos) * 100)
    perc_rep = ((b / tot_validos) * 100)
    perc_lib = ((c / tot_validos) * 100)
    print(f"Democratas: {perc_demo}")
    print(f"Republicanos: {perc_rep}")
    print(f"liberais: {perc_lib}")
    print(f"Brancos: {votos[3]}")
    print(f"Abestencao : {abstencao}%")
    print(total)
    print(abstencao)
final()