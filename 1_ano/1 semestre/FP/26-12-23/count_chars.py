def count_chars(string):
    lst_digit = 0
    lst_alpha = 0
    lst_special = 0
    for a in string:
        if a.isdigit() == True:
            lst_digit+= 1
        elif a.isalpha() == True:
            lst_alpha+=1
        else:
            lst_special += 1
    out = (lst_digit,lst_alpha,lst_special)
    return out
    
print(count_chars("12a#12"))