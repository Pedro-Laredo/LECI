from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding

def encrypt():
    block_size = 128
    padder = padding.PKCS7(block_size).padder()
    key = bytes.fromhex("0700d603a1c514e46b6191ba430a3a0c")
    iv = bytes.fromhex("aad1583cd91365e3bb2f0c3430d065bb")
    plaintext = bytes.fromhex("068b25c7bfb1f8bdd4cfc908f69dffc5ddc726a197f0e5f7")
    plaintext = padder.update(plaintext) + padder.finalize() #adicionar padding
    
    cipher = Cipher(algorithms.AES(key),modes.CBC(iv))
    encryptor = cipher.encryptor()
    ct = encryptor.update(plaintext) + encryptor.finalize()
    return ct,cipher

def decrypt(ct,cipher):
    decryptor = cipher.decryptor()
    padded_pt = decryptor.update(ct) + decryptor.finalize()

    # Remover padding
    unpadder = padding.PKCS7(128).unpadder()  # 128 bits = 16 bytes
    pt_bytes = unpadder.update(padded_pt) + unpadder.finalize()
    
    return pt_bytes

def main():
    ct,Cipher = encrypt()
    print(ct.hex())
    print("Now the decrypt")
    pt_bytes= decrypt(ct,Cipher)
    print(pt_bytes.hex())

main()
