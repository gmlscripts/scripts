string_trim
===========

Returns given string with whitespace stripped from its start
and end. Whitespace is defined as SPACE, LF, CR, HT, VT, FF.
A string of characters to be trimmed may be optionally supplied.

    //  string_trim(str, trim)
    s = string_trim("123");                 //  "123"
    s = string_trim(" 123");                //  "123"
    s = string_trim("123 ");                //  "123"
    s = string_trim(" 123 123 ");           //  "123 123"
    s = string_trim(" \a 123");             //  "\a 123"
    s = string_trim("\t\r\n123\f \v");      //  "123"
    s = string_trim("123456789", "1289");   //  "34567"

script: string_trim.gml

contributors: xot
