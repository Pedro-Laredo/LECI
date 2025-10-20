from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

def encrypt():
    key = bytes.fromhex("0700d603a1c514e46b6191ba430a3a0c")
    iv = bytes.fromhex("aad1583cd91365e3bb2f0c3430d065bb")
    plaintext = bytes.fromhex("068b25c7bfb1f8bdd4cfc908f69dffc5ddc726a197f0e5f720f730393279be91")
    
    cipher = Cipher(algorithms.AES(key),modes.CBC(iv))
    encryptor = cipher.encryptor()
    ct = encryptor.update(plaintext) + encryptor.finalize()
    return ct,cipher

def decrypt(ct,cipher):
    decryptor = cipher.decryptor()
    pt_bytes = decryptor.update(ct) + decryptor.finalize()
    return pt_bytes


def main():
    ct,Cipher = encrypt()
    print(ct.hex())
    print("Now the decrypt")
    pt_bytes= decrypt(ct,Cipher)
    print(pt_bytes.hex())

main()
