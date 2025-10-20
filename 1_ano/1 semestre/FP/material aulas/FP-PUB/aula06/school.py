# Complete o programa!

# a)
def loadFile(fname, lst):
    with open(fname, "r") as f:
        f.readline()
        for line in f:
            line.rstrip()
            fields= line.split("\t")
            number = int(fields[0])
            name = fields[1]
            note1 = float(fields[5])
            note2 = float(fields[6])
            note3 = float(fields[7])
            lst[number]=name,note1,note2,note3
        
    

    
# b) Crie a função notaFinal aqui...
...

# c) Crie a função printPauta aqui...
...

# d)
def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    print(lst)
    
    # ordenar a lista
    ...
    
    # mostrar a pauta
    ...


# Call main function
if __name__ == "__main__":
    main()


