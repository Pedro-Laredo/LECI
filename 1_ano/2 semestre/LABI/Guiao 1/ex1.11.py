from Cryptodome.PublicKey import RSA

keypair = RSA.generate(1024)
fout = open("keypair.pem", "wb")
kp = keypair.exportKey("PEM", "senha")
fout.write(kp)
fout.close()

fin = open("keypair.pem", "rb")
keypair = RSA.importKey(fin.read(), "senha")
fin.close()
print(keypair)