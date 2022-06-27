string_rpad
===========

Returns a string padded on its right to a given length.
If the padded length is less than the original length,
the original string is returned.

    //  string_rpad(str, len, pad)
    s = string_rpad("123", 7, "xo");        //  "123xoxo"
    s = string_rpad("1234", 7, "xo");       //  "1234xox"
    s = string_rpad("1234", 8);             //  "1234    "
    s = string_rpad("1234", 8, ".");        //  "1234...."
    s = string_rpad("", 8, "123456789");    //  "12345678"
    s = string_rpad("123456789", 4, ".");   //  "123456789"

script: string_rpad.gml

contributors: xot
