def discard(inp):
    if len(inp)<3:
        a = " "
        return a
    else:
        new_str = inp[0:2] + inp[-1] + inp[-2]
        return new_str
    
print(discard("st"))