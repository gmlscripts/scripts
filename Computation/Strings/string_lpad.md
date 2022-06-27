string_lpad
===========

Returns a string padded on its left to a given length.
If the padded length is less than the original length,
the original string is returned.

    //  string_lpad(str, len, pad)
    s = string_lpad("123", 7, "xo");        //  "xoxo123"
    s = string_lpad("1234", 7, "xo");       //  "xox1234"
    s = string_lpad("1234", 8);             //  "    1234"
    s = string_lpad("1234", 8, ".");        //  "....1234"
    s = string_lpad("", 8, "123456789");    //  "12345678"
    s = string_lpad("123456789", 4, ".");   //  "123456789"

script: string_lpad.gml

contributors: xot
