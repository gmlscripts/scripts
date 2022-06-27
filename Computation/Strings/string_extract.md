string_extract
==============

Returns the element at given index within a string of elements.

    //  string_extract(str, sep, index)
    s = string_extract("cat,dog,mouse", ",", 0);    //  "cat"
    s = string_extract("cat,dog,mouse", ",", 1);    //  "dog"
    s = string_extract("cat,dog,mouse", ",", 2);    //  "mouse"
    s = string_extract("cat,dog,mouse", "o", 1);    //  "g,m"
    s = string_extract("cat,dog,mouse", ",", -1);   //  "cat"
    s = string_extract("cat,dog,mouse", ",", 3);    //  "mouse"

script: string_extract.gml

contributors: Deri, xot
