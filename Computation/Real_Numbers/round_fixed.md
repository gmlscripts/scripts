round_fixed
===========

Returns a given number rounded to the a number of places.
If places is positive, the number is rounded on the right
side of the decimal separator. If places is negative, the
rounding occurs on the left side of the decimal separator.

    n = round_fixed(2468.1357,  2); //  n == 2468.14
    n = round_fixed(2468.1357, -2); //  n == 2500.00

script: round_fixed.gml

contributors: IceMetalPunk
