string_remove_whitespace
========================

    text = "This␍␊Is␉A    Test.";
    out1 = string_remove_whitespace(text);          //  out1 == "ThisIsATest"
    out2 = string_remove_whitespace(text, "_");     //  out2 == "This_Is_A_Test"

script: string_remove_whitespace.gml

contributors: xot
