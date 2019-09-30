1. Terminalo lange prašo įvesti savo varda. Po įvedimo terminalo lange išveda::

       "Tavo vardas 'ivestas vardas'"

   Sprendimas:

   .. code-block:: python
   
       >>> mocker.patch('builtins.input', return_value='Vardenis')
       <MagicMock name='input' id='...'>

       >>> from S01E01 import T01
       >>> T01.main()
       Tavo vardas 'Vardenis'

2. Naudotojas įveda du skaičius. Ekrane išveda tų skaičių sudėties, atimties,
   dalybos ir daugybos rezultatus.

   Sprendimas:

   .. code-block:: python
   
       >>> mocker.patch('builtins.input', side_effect=[6, 3])
       <MagicMock name='input' id='...'>
   
       >>> from S01E01 import T02
       >>> T02.main()
       a + b = 9
       a - b = 3
       a / b = 2.0
       a * b = 2.0

3. Sukurkukite dešimties skaičių masyvą. Programa turi į ekrana išvesti tik
   tuos skaičius, kurie yra lyginiai.

   Sprendimas:

   .. code-block:: python
   
       >>> from S01E01 import T03
       >>> T03.lyginiai(range(10))
       [0, 2, 4, 6, 8]

4. Sukurkite tuščią masyvą ir į jį įdėkite, bet kokį skaičių, rezultatą
   išvesktie į ekraną.

   Sprendimas:

   .. code-block:: python 

      >>> a = []
      >>> a.append(42)
      >>> a
      [42]


5. Sukurti funkcija kuri priema lygini skaiciu, o grazina nelygini.

   Sprendimas:

   .. code-block:: python

       >>> from S01E01 import T05
   
       >>> T05.nelyginis(2)
       3
   
       >>> T05.nelyginis(3)
       Traceback (most recent call last):
       ...
       AssertionError: Galimi tik lyginiai skaičiai.

6. Parašykite anoniminę funkciją, ji priima du parametrus ir grąžina jų suma.

   Sprendimas:

   .. code-block:: python

       >>> f = lambda a, b: a + b
       >>> f(4, 3)
       7

7. Iš žodžio "apelsinas", atkirpkite ir išsaugokite: tris pirmas raides, tris
   paskutines raides, ir vidurines priebalses "ls".

   Sprendimas:

   .. code-block:: python

       >>> w = 'apelsinas'
       >>> a, b, c = w[:3], w[-3:], w[3:5]
       >>> a, b, c
       ('ape', 'nas', 'ls')

8. Skaičių konvertuokite/paverskite į tekstinę reikšmę.

   Sprendimas:

   .. code-block:: python

       >>> str(42)
       '42'

9. Sakinyje "Jonas mėgsta apelsinus", visas 'a' raides turite paversti į
   didžiąsias, ekrane turime pamatyti rezultatą toki: "JonAs mėgstA Apelsinus".

   Sprendimas:

   .. code-block:: python

       >>> s = 'Jonas mėgsta apelsinus'
       >>> s.replace('a', 'A')
       'JonAs mėgstA Apelsinus'

10. Į sakinį įrašykite du žodžius naudodami "format operator".

   Sprendimas:

   .. code-block:: python

       >>> 'Mano %s batai, buvo %s.' % ('batai', 'du')
       'Mano batai batai, buvo du.'

11. Parašyti ciklą (while) kuris į ekraną išvestu tik lyginius skaičius,
    išvedus daugiau nei 10 skaičių į ekraną stabdomas ciklas.

    Sprendimas:

    .. code-block:: python

        >>> import itertools
        >>> counter = itertools.count()
        >>> i = 0
        >>> while i < 10:
        ...     x = next(counter)
        ...     if x % 2 == 0:
        ...         print(x)
        ...         i += 1
        0
        2
        4
        6
        8
        10
        12
        14
        16
        18


12. Naudotojo prašoma įvesti jo vardą, į ekraną atspausdiname "short" - jei
    vardas trumpesnis nei 5 raidės, "medium" - jei vardas trumpesnis nei 8
    raidės, bet ilgesnis nei 5 raidės, "long" - jei vardas ilgesnis nei 10
    raidžių.

    Sprendimas:

    .. code-block:: python

        >>> from S01E01 import T12

        >>> T12.howlong('Foo')
        short

        >>> T12.howlong('Foobar')
        medium

        >>> T12.howlong('Foobarbaz')
        None

        >>> T12.howlong('Foobarbazzz')
        long

13. Parašykite funciją kuri priima skaičių ir jį atspausdina į ekraną, ši
    funkcija importuojama iš kito python failo.

    Sprendimas:

    .. code-block:: python

        >>> from S01E01 import T13
        >>> T13.spausdink(42)
        42
