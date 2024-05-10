import sys
import os.path
from Cryptodome.Cipher import AES
from Cryptodome.Hash import SHA256

def main():
    ficheiro = sys.argv[1]
    key = sys.argv[2]
    if len(key)<16:
        h = SHA256.new()
        h.update(key.encode("utf-8"))
        key = h.digest()
        cipher = AES.new(key,AES.MODE_ECB)
        with open(ficheiro,"rb") as file:
            while True:
                buffer = file.read(16)
                if not buffer:
                    break
                if len(buffer)%16 !=0:
                    buffer +=b'\0'*(16-len(buffer)%16)
                x = cipher.encrypt(buffer)
                os.write(1,x)
        exit()
    elif len(key)>16:
        key = key[0:16]
        cipher = AES.new(key.encode("utf-8"),AES.MODE_ECB)
        with open(ficheiro,"rb") as file:
            while True:
                buffer = file.read(16)
                if not buffer:
                    break
                if len(buffer)%16 !=0:
                    buffer +=b'\0'*(16-len(buffer)%16)
                x = cipher.encrypt(buffer)
                os.write(1,x)
        exit()
        
        

main()