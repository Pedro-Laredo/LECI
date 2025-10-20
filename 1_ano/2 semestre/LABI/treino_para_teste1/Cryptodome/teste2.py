from Cryptodome.Hash import SHA256
import sys
import os.path
def main():
    if len(sys.argv)<2:
        print("Utilização inválida")
    else:
        h = SHA256.new()
        ficheiro = sys.argv[1]
        with open(ficheiro,"r") as file:
            for line in file:
                h.update(line.encode("utf-8"))
                print(line)
        print("-----------------------")
        print(h.hexdigest())
        

main()