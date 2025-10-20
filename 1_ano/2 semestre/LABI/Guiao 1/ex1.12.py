from Cryptodome.PublicKey import RSA
from Cryptodome.Cipher import PKCS1_OAEP

f = open("keypair.pem", "r")
keypair = RSA.importKey(f.read(), "senha")
cipher = PKCS1_OAEP.new(keypair)
# Encryption with public key
x = cipher.encrypt("The quick brown fox jumps over the lazy dog".encode("utf-8"))
print(x)
print(cipher.decrypt(x).decode("utf-8"))