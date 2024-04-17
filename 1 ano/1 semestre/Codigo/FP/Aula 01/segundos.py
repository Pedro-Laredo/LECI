tempo=int(input("Escreva o tempo em segundos"))

horas= tempo//3600

minutos= (tempo-(horas*3600))//60

segundos= (tempo-(horas*3600))%60

print(f"{horas}h : {minutos}m : {segundos}s")