import socket

def main():
    tpc_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tpc_s.bind(("127.0.0.1",1234))
    tpc_s.listen(1)

    client_s,cliente_adr = tpc_s.accept()

    while True:
        b_data = client_s.recv(4096)
        client_s.send(b_data.upper())
    client_s.close()
    tpc_s.close()
main()