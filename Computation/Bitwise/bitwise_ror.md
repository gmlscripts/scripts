bitwise_ror
===========

![right](/images/ror.png "bitwise rotate right")

Returns the given value with its bits rotated to the right.
Each bit value shifts its position right a number of places
given by the count parameter. As each bit shifts beyond the
least significant bit position, it is inserted into the most
significant bit position. The most significant bit is determined
by the size parameter.

    bits = 58311;                    //  58311 [ 1110001111000111 ]
    ror = bitwise_ror(bits, 1, 16);  //  61923 [ 1111000111100011 ]
    ror = bitwise_ror(bits, 2, 16);  //  63729 [ 1111100011110001 ]
    ror = bitwise_ror(bits, 3, 16);  //  64632 [ 1111110001111000 ]
    ror = bitwise_ror(bits, 4, 16);  //  32316 [ 0111111000111100 ]

Note: If the given integer is larger than the given size, 
the excess upper bits will be cleared.

script: bitwise_ror.gml

contributors: EyeGuy, xot
