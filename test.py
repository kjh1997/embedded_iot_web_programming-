def a(c):
    if c <= 2: return c
    return a(c-1) + a(c-3)
print(a(4))