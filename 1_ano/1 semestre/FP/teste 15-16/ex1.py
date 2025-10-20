def boletim():
    print("1-democratas \n 2-republicanos \n 3-Liberais \n 0-Branco")
    voto = int(input("Digite o n.º correspondente ao seu voto: _"))
    if voto ==1:
        return "democratas"
    elif voto ==2:
        return "republicanos"
    elif voto ==3:
        return "liberais"
    elif voto == 0:
        return "Branco"

def veri_num(num):
    with open("caderno.txt","r") as file:
        for line in file:
            line = line.strip().split(",")
            if int(line[0]) == num:
                return True
    return False

#------------------------------------------------------
def programa():
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
    return[dem,rep,lib,branco]

print(programa())
        
        