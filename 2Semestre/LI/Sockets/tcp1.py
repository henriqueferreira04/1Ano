import socket
def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
    tcp_s.bind( ("127.0.0.1", 1234) )

    tcp_s.listen(1)
    # esperar por novos clientes
    client_s, client_addr = tcp_s.accept()
    while 1:
        b_data = client_s.recv(4096) 
        client_s.send(b_data.upper())
        print("->: %s \n" % client_s)
        client_s.close()
    tcp_s.close()   
main()