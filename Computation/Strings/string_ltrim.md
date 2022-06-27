string_ltrim
============

Returns given string with whitespace stripped from its start.
Whitespace is defined as SPACE, LF, CR, HT, VT, FF. A string
of characters to be trimmed may be optionally supplied.

    //  string_ltrim(str, trim)
    s = string_ltrim("123");                //  "123"
    s = string_ltrim(" 123");               //  "123"
    s = string_ltrim("123 ");               //  "123 "
    s = string_ltrim(" 123 123 ");          //  "123 123 "
    s = string_ltrim(" \a 123");            //  "\a 123"
    s = string_ltrim("\t\r\n123\f \v");     //  "123\f \v"
    s = string_ltrim("123456789", "1289");  //  "3456789"

script: string_ltrim.gml

contributors: xot
