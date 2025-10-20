from cryptography.hazmat.primitives.asymmetric import rsa
import sys
from cryptography.hazmat.primitives import serialization

def generate_pair(size):
    #try:
        #public_key_file = sys.argv[0]
        #private_key_file = sys.argv[1]
        #save_file_to = sys.argv[2]
        #size = int(sys.argv[3])
    #except:
        #print("Wrong Usage")
    private_key = rsa.generate_private_key(
            public_exponent= 65537,
            key_size= size
    )
    public_key = private_key.public_key()
    return private_key,public_key

def write_pem(public_key,private_key,pub_path,priv_path):
    public_pem = public_key.public_bytes(
        encoding = serialization.Encoding.PEM,
        format = serialization.PublicFormat.SubjectPublicKeyInfo
        
    )

    private_pem = private_key.private_bytes(
        encoding = serialization.Encoding.PEM,
        format = serialization.PrivateFormat.TraditionalOpenSSL,
        encryption_algorithm=serialization.NoEncryption()

        
    )
    with open(pub_path, "wb") as f:
        f.write(public_pem)
    with open(priv_path, "wb") as f:
        f.write(private_pem)


        
def main():
    try:
        public_key_file = sys.argv[1]
        private_key_file = sys.argv[2]
        size = int(sys.argv[3])
    except:
        print("Wrong Usage")
    private_key,public_key = generate_pair(size)
    write_pem(public_key,private_key,public_key_file,private_key_file)
    

main()