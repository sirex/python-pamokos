LONGNESS = [
    (5, 'short'),
    (8, 'medium'),
    (10, None),
    (None, 'long'),
]


def howlong(word):
    for n, name in LONGNESS[:-1]:
        if len(word) < n:
            print(name)
            return
    print(LONGNESS[-1][1])
