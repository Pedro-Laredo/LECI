#        cidade     cidade  distancia tempo
lista = [("aveiro","porto",20,20),
         ("lisboa","algrave",100,20),
          ("viana","valenca",70,30)]
lista_2 = sorted(lista, key = lambda t : t[2]/t[3], reverse=True)
print(lista_2)