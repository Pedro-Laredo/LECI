import os
import sys
from Cryptodome.Cipher import AES
from Cryptodome.Hash import SHA256
from Cryptodome.Util.Padding import pad



while True:
    try:
        numero = int(input("Introduza um numero-> "))
        if numero == 0:
            break
        elif numero<0:
            print("Introduza um numero inteiro positivo! ")
            continue
        else:
            key = os.urandom(16)
            cypher = AES.new(key,AES.MODE_ECB)
            data = cypher.encrypt(bytes("%16d" %(numero),"utf-8"))
            print(data)
            value = int(str(cypher.decrypt(data),"utf-8"))
            print(value)
    except ValueError:
        print("Introduza um numero válido")
        continue