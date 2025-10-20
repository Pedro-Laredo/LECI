def printPauta(lst):
    print("{:<10} {:^20} {:>10}".format("Número", "Nome", "Nota Final"))
    for aluno in lst:
        numero, nome, nota = aluno
        print("{:<10} {:^20} {:>10}".format(numero, nome, nota))

# Exemplo de uso da função printPauta com uma lista de alunos
alunos = [
    ("001", "João", "18"),
    ("002", "Maria", "15"),
    ("003", "Pedro", "20"),
    ("004", "Ana", "17"),
    ("005", "Luísa", "16")
]

printPauta(alunos)