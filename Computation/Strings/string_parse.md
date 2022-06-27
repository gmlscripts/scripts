string_parse
============

    //  string_parse(str, token, ignore)
    list = string_parse("cat|dog|house|bee", "|", true);    //  [ "cat", "dog", "house", "bee" ]
    list = string_parse("cat|dog|||house|bee", "|", true);  //  [ "cat", "dog", "house", "bee" ]
    list = string_parse("cat|dog|||house|bee", "|", false); //  [ "cat", "dog", "", "", "house", "bee" ]
    list = string_parse("cat|dog|house|bee", "o", true);    //  [ "cat|d", "g|h", "use|bee" ]
    list = string_parse("cat|dog|house|bee", "", true);     //  [ "cat|dog|house|bee" ]
    list = string_parse("cat|dog|house|bee", "#", true);    //  [ "cat|dog|house|bee" ]
    list = string_parse("", "|", true);                     //  [ ]

script: string_parse.gml

contributors: EyeGuy
