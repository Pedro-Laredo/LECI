import sys
import pytest

argumento = sys.argv[1]

def fibonacci(argumento):
    fib_sequence = [0, 1]
    try:
        argumento=int(argumento)
    except:
        return "Valor inválido introduzido"
    
    if argumento <0:
        return []
    
    elif argumento ==0:
        return[0]
    
    elif argumento == 1:
        return [0]
    
    
    for i in range(2, argumento+1):
        next_number = fib_sequence[-1] + fib_sequence[-2]
        fib_sequence.append(next_number)
    
    return fib_sequence
def teste1():
    if fibonacci(0) == [0] and fibonacci(-1) == []:
        print("Teste OK")
    else:
        print("Teste Falhou")
print(fibonacci(argumento))


