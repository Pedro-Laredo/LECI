# Complete este programa como pedido no guião da aula.

def listContacts(dic):
    """Print the contents of the dictionary as a table, one item per row."""
    print("{:>12s} : {}".format("Numero", "Nome"))
    for num in dic:
        print("{:>12s} : {}".format(num, dic[num]))

def filterPartName(contactos, part):
    """Returns a new dict with the contacts whose names contain partName."""
    filtered_contacts = {}
    for num, name in contactos.items():
        if part.lower() in name.lower():  # Using lower() for case-insensitive comparison
            filtered_contacts[num] = name
    return filtered_contacts





def menu():
    """Shows the menu and gets user option."""
    print()
    print("(L)istar contactos")
    print("(A)dicionar contacto")
    print("(R)emover contacto")
    print("Procurar (N)úmero")
    print("Procurar (P)arte do nome")
    print("(T)erminar")
    op = input("opção? ").upper()   # converts to uppercase...
    return op


def main():
    """This is the main function containing the main loop."""

    # The list of contacts (it's actually a dictionary!):
    contactos = {"234370200": "Universidade de Aveiro",
        "727392822": "Cristiano Aveiro",
        "387719992": "Maria Matos",
        "887555987": "Marta Maia",
        "876111333": "Carlos Martins",
        "433162999": "Ana Bacalhau"
        }

    op = ""
    while op != "T":
        op = menu()
        if op == "T":
            print("Fim")
        elif op == "L":
            print("Contactos:")
            listContacts(contactos)
        elif op =="A":
            num = input("numero? ")
            nome = input("Nome? ")
            contactos[num]= nome
        elif op =="R":
            num = input("Numero? ")
            contactos.pop(num)

        elif op =="P":
            part = input("Parte do nome? ")
            filtered = filterPartName(contactos, part)
            print("Contatos com '{}' no nome:".format(part))
            listContacts(filtered)    
        elif op =="N":
            num = input("numero? ")
            if num in contactos:
                r =contactos.get(num)
                print (r)
        
            else:
                print (num)
        else:
            print("Não implementado!")
    

# O programa começa aqui
main()
