import math;

ladoa=float(input('introduza o valor'))

ladob=float(input('introduza o valor'))

aquadrado= math.pow(ladoa,2)

bquadrado =math.pow(ladob,2)

h=math.sqrt(aquadrado+bquadrado)

cos=ladoa/h

graus= math.degrees(math.acos(cos))

print(f"hipotenusa{h} e angulo{graus}")

