string_stagger_case
===================

Returns a string with the letters in staggered case,
such as: "hElLo! hOw ArE yOu ToDaY?"

    //  string_stagger_case(str, spaces, first)
    s = string_stagger_case("this is a test", false, false);    //  "tHiS iS a TeSt"
    s = string_stagger_case("this is a test", true, false);     //  "tHiS Is a tEsT"
    s = string_stagger_case("this is a test", false, true);     //  "ThIs Is A tEsT"
    s = string_stagger_case("this is a test", true, true);      //  "ThIs iS A TeSt"
    s = string_stagger_case("this is a test");                  //  "ThIs iS A TeSt"

script: string_stagger_case.gml

contributors: Legolas710, xot
