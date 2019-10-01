.. default-role:: literal

1. Į sukurta tuščia sąrašą įdėkite tris skaičius.

   .. code-block:: python

       >>> a = []
       >>> a.extend([1, 2, 3])
       >>> a
       [1, 2, 3]

2. Sukurti funkciją, kuri grąžina sąraše esantį didžiausią skaičių, kuris yra
   mažesnis už 20 ir nelyginis.

   .. code-block:: python

       >>> from S01E02 import T02

       >>> T02.f([1, 5, 12, 17, 20, 23, 28])
       17

       >>> T02.f([23])

       >>> T02.f([1])
       1

3. Iš sąrašo `[1, 2, 3, 4, 5]` ištrinkite skaičių `2` ir įterpkite skaičių
   `42`, prieš skaičių `5`.

   .. code-block:: python

       >>> s = [1, 2, 3, 4, 5]
       >>> del s[1]
       >>> s.insert(3, 42)
       >>> s
       [1, 3, 4, 42, 5]

4. Sukurkite sąrašą iš 20 atsitiktinių skaičių. Skaičiai turi būti intervale
   nuo 24 iki 543.

   .. code-block:: python

       >>> import random
       >>> s = [random.randint(24, 543) for x in range(20)]
       >>> len(s) == 20 and min(s) >= 24 and max(s) <= 543
       True

5. Sukurti ciklą, kuris išvestu į ekraną visas turimas reikšmes iš šio sąrašo:
   `[1, 2, 'd', 'r4', 2, 5, 'dc', 'as', 'y6']`.

   .. code-block:: python

       >>> s = [1, 2, 'd', 'r4', 2, 5, 'dc', 'as', 'y6']
       >>> print(*s)
       1 2 d r4 2 5 dc as y6

6. Parašykite ciklą, išvesdami šio žodžio `ananasas` raides į ekraną, po
   kiekvienos raidės pridėtu `Z` raidę.

   .. code-block:: python

       >>> s = 'ananasas'
       >>> print(*s, '', sep='Z')
       aZnZaZnZaZsZaZsZ

7. Sukurkite du sąrašus, į juos įdėkite po 5 atsitiktinius skaičius. Sukurkite
   ciklą kuriame tikrins pirmame ir antrame sąrašuose esančius skaičius toje
   pačioje pozicijoje, palyginant, kuris skaičius didesnis. Kuriamas tik vienas
   ciklas!

8. Sukurkite sąrašą ir į jį pridėkite atsitiktinį skaičių nuo 1 iki 12, antras
   skaičius už pirmą didesnis 2.

9. Sukurkite `.txt` failą, parašykite funkciją, kuri įrašytu į failą tekstą
   `Hello World`.
