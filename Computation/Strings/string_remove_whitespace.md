string_remove_whitespace
========================

Consolidates and removes all whitespace from a string,
optionally replacing it with a character or string.
Whitespace is defined as SPACE, HT, LF, VT, FF, CR.

    text = "This\r\nIs\tA    Test";
    s = string_remove_whitespace(text);         //  "ThisIsATest"
    s = string_remove_whitespace(text, "_");    //  "This_Is_A_Test"

script: string_remove_whitespace.gml

contributors: xot
