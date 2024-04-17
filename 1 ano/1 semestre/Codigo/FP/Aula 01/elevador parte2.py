#elevador parte2
import math

andares= int(input("Introduza o numero de andares"))

moradores = int(input("Introduza o numero de moradores por piso"))

distanciapiso1= 2*3*moradores

distanciatotalporano= (distanciapiso1*math.factorial(andares))*365

thoras= distanciatotalporano/3600

print(distanciatotalporano)

print(f'O elevador andou {thoras} horas num ano')






