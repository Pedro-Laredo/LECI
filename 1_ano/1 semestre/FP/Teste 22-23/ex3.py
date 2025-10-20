def jogo():
    while True:
        secret = str(4271)
        guess = input("Aposta-> ")
        bulls = ""
        cows = ""
        for a in range(len(secret)):
            if secret[a] == guess[a]:
                bulls += secret[a]
            elif secret[a] in guess:
                cows += secret[a]
        print(f"Bulls {bulls}")
        print(f"Cows{cows}")
        if len(bulls)==len(secret):
            print("parabens venceu")
            break
        else:
            continue


jogo()