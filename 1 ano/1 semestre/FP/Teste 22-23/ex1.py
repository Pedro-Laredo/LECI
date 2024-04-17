def calc_imposto():
    rendimento = float(input("Rendimuento anual-> "))
    if rendimento <10000:
        taxa = 0.05*rendimento
        dedução = 0
    elif 10000<=rendimento<20000:
        taxa = 0.1*rendimento
        dedução = 500
    elif rendimento>=20000:
        taxa = 0.15*rendimento
        dedução = 1500
    return (taxa+dedução)

print(calc_imposto())