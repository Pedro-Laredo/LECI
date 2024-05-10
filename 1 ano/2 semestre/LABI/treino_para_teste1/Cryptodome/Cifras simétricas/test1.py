import os
from Cryptodome.Cipher import ARC4 
cipher = ARC4.new("chave".encode("utf-8"))
cryptogram = cipher.encrypt("O pedro e mesmo bonito".encode("utf-8"))
os.write(1,cryptogram)
print()
decipher = ARC4.new("chave".encode("utf-8"))
decrypted = decipher.decrypt(cryptogram)
print(decrypted.decode("utf-8"))