import csv
import sys
def main(argv):
    lst = []
    temperatura_lista = []
    with open(argv[1],"r") as file:
        reader = csv.reader(file)
        next(reader)
        for line in reader:
            lst.append(line)
    for linha in lst:
        temperatura_lista.append(linha[3])
    print(max(temperatura_lista))

    
main(sys.argv)