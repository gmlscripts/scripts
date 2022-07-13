select
======

Returns an argument selected by n. This is similar to selecting
an element from an array, except the elements are arguments.

    //  Display a dialog box.
    n = show_question("Will you click Yes?");

    //  Select a string based on the button clicked.
    show_message("You clicked " + select(n, "No", "Yes"));

In the above example, `show_question()` returns either `0` or `1`,
selecting `"No"` or `"Yes"` respectively.

script: select.gml

contributors: xot
