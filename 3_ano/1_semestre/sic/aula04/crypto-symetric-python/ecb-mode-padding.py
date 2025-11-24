from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding

def encryptor():
    block_size = 128
    padder = padding.PKCS7(block_size).padder()
    key = bytes.fromhex("7723d87d773a8bbfe1ae5b081235b566")
    plaintext = bytes.fromhex("1b0a69b7bc534c16cecffae02cc5323190ceb413f1db3e9f0f79ba654c54b601")
    plaintext = padder.update(plaintext) + padder.finalize() #adicionar padding
    
    cipher = Cipher(algorithms.AES(key), modes.ECB())
    encrypt = cipher.encryptor()
    ct = encrypt.update(plaintext) + encrypt.finalize()
    
    
    return ct,cipher

def decryptor_func(ct, cipher):
    decryptor = cipher.decryptor()
    padded_pt = decryptor.update(ct) + decryptor.finalize()

    # Remover padding
    unpadder = padding.PKCS7(128).unpadder()  # 128 bits = 16 bytes
    pt_bytes = unpadder.update(padded_pt) + unpadder.finalize()
    
    return pt_bytes




def main():
    ct,cipher = encryptor()
    print(ct.hex())  # converter pra hexa para comparar com vetores de teste
    print("Now the decrypt")
    pt_bytes = decryptor_func(ct, cipher) # converter para hexa para comprarar com vetores de teste
    print(pt_bytes.hex())
    
    return 0

main()
