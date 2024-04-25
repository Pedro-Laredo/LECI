import sys
import os.path
from Cryptodome.Cipher import ARC4
from Cryptodome.Hash import SHA256

def main():
    if len(sys.argv)<3:
        print(len(sys.argv))
        print("bad usage")
    else:
        ficheiro = sys.argv[1]
        chave = sys.argv[2]
        if len(chave)<5:
            hash = SHA256.new()
            hash.update(chave.encode("utf-8"))
            chave = hash.digest()
            file = open(ficheiro,"rb")
            f = file.read(512)
            cifra = ARC4.new(chave)
            cryptogram = cifra.encrypt(f)
            os.write(1,cryptogram)
            exit()
        elif len(chave)>256:
            chave = chave[0:256]
        else:
            chave = chave
        file = open(ficheiro,"rb")
        f = file.read(512)
        cifra = ARC4.new(chave.encode("utf-8"))
        cryptogram = cifra.encrypt(f)
        os.write(1,cryptogram)
main()
