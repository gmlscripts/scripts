bitwise_rol
===========

![right](/images/rol.png "bitwise rotate left")

Returns the given value with its bits rotated to the left.
Each bit value shifts its position left a number of places
given by the count parameter. As each bit shifts beyond the
most significant bit position, it is inserted into the least
significant bit position. The most significant bit is determined
by the size parameter.

    bits = 58311;                    //  58311 [ 1110001111000111 ]
    rol = bitwise_rol(bits, 1, 16);  //  51087 [ 1100011110001111 ]
    rol = bitwise_rol(bits, 2, 16);  //  36639 [ 1000111100011111 ]
    rol = bitwise_rol(bits, 3, 16);  //   7743 [ 0001111000111111 ]
    rol = bitwise_rol(bits, 4, 16);  //  15486 [ 0011110001111110 ]

Note: If the given integer is larger than the given size, 
the excess upper bits will be cleared.
    
script: bitwise_rol.gml

contributors: EyeGuy, xot
