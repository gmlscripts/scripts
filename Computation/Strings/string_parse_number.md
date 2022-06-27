string_parse_number
===================

Returns number of token-separated substrings from a given string.

    //  string_parse_number(str, token, ignore)
    n = string_parse_number("cat|dog|house|bee", "|", true);    //  4
    n = string_parse_number("cat|dog|||house|bee", "|", true);  //  4
    n = string_parse_number("cat|dog|||house|bee", "|", false); //  6
    n = string_parse_number("cat|dog|house|bee", "o", true);    //  3
    n = string_parse_number("cat|dog|house|bee", "", true);     //  1
    n = string_parse_number("cat|dog|house|bee", "#", true);    //  1
    n = string_parse_number("", "|", true);                     //  0

script: string_parse_number.gml

contributors: EyeGuy
