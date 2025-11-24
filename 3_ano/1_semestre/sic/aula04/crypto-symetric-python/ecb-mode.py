from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

def encryptor():
    key = bytes.fromhex("7723d87d773a8bbfe1ae5b081235b566")
    plaintext_bytes = bytes.fromhex("1b0a69b7bc534c16cecffae02cc5323190ceb413f1db3e9f0f79ba654c54b60e")
    
    cipher = Cipher(algorithms.AES(key), modes.ECB())
    encrypt = cipher.encryptor()
    ct = encrypt.update(plaintext_bytes) + encrypt.finalize()
    
    
    return ct,cipher


def decryptor_func(ct,cipher):

    decryptor = cipher.decryptor()
    pt_bytes = decryptor.update(ct) + decryptor.finalize()
    return pt_bytes




def main():
    ct,cipher = encryptor()
    print(ct.hex())  # converter pra hexa para comparar com vetores de teste
    print("Now the decrypt")
    pt_bytes = decryptor_func(ct, cipher) # converter para hexa para comprarar com vetores de teste
    print(pt_bytes.hex())
    
    return 0

main()
