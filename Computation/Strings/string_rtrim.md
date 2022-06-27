string_rtrim
============

Returns given string with whitespace stripped from its end.
Whitespace is defined as SPACE, LF, CR, HT, VT, FF. A string
of characters to be trimmed may be optionally supplied.

    //  string_rtrim(str, trim)
    s = string_rtrim("123");                //  "123"
    s = string_rtrim(" 123");               //  " 123"
    s = string_rtrim("123 ");               //  "123"
    s = string_rtrim(" 123 123 ");          //  " 123 123"
    s = string_rtrim("123 \a ");            //  "123 \a"
    s = string_rtrim("\t\r\n123\f \v");     //  "\t\r\n123"
    s = string_rtrim("123456789", "1289");  //  "1234567"

script: string_rtrim.gml

contributors: xot
