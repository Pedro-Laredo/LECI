def isUgly(n):
    if (n == 1):
        return ("Ugly")
    if (n <= 0):
        return ("Not ugly")

    if (n % 2 == 0):
        return (isUgly(n // 2))
        
    if (n % 3 == 0):
        return (isUgly(n // 3))

    if (n % 5 == 0):
        return (isUgly(n // 5))
    return "Not Ugly"

print(isUgly(5))