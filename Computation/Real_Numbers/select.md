select
======

Returns an argument selected by n.

    n = show_question("Will you click Yes?");
    show_message("You clicked " + select(n, "No", "Yes"));

In the above example, `show_question()` returns either `0` or `1`,
selecting `"No"` or `"Yes"` respectively.
    
script: select.gml

contributors: xot
