import itertools

def allMatches(teams):
    # Usando itertools para gerar todas as combinações possíveis de jogos
    matches = list(itertools.permutations(teams, 2))

    return matches

# Exemplo de uso:
teams = ["FCP", "SCP", "SLB","BFC"]
all_games = allMatches(teams)
print(all_games)
