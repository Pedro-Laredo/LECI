def replaceCharactersWithUnderscores(s, t):

    for a in range(len(s)):
        for b in range(len(t)):
            if s[a] == t[b]:
                s = s.replace(s[a],"_")
    return s

print(replaceCharactersWithUnderscores(s="Hello", t ="Hi"))