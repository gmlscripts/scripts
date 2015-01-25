string_escape
=============

Parses all C-style escape sequences in the given string and returns 
the parsed string.

    //      Escape Sequence  |  Meaning
    //      -----------------+--------------------------------
    //      \\               |  Literal backslash
    //      \n               |  ASCII linefeed (LF)
    //      \r               |  ASCII carriage return (CR)
    //      \t               |  ASCII horizontal tab (TAB)
    //      \0               |  ASCII null character (NUL)
    //      \ooo             |  Character with octal value ooo
    //      \xhh             |  Character with hex value hh

script: string_escape.gml

contributors: Yourself
