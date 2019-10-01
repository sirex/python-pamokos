def f(l):
    s = sorted(l, reverse=True)
    g = (x for x in s if x < 20 and x % 2 > 0)
    return next(g, None)
