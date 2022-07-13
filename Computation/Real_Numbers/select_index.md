select_index
============

Returns the index of an argument matching a given value.

    //  Check the last keyboard character
    value = keyboard_lastchar;

    //  Match the character to an index.
    //  eg. "A" matches the first choice, index 0,
    //      "B" matches the next one, index 1, etc...
    index = select_index(value, "A", "B", "G", "O");

    //  Use the index to select a choice.
    //  eg. "B" was pressed, index 1, which selects "Banana"
    choice = select(index, "Apple", "Banana", "Grapes", "Orange");
    show_message("You selected: " + choice);

In the above example, an item is selected based on the last
keyboard key pressed.

script: select_index.gml

contributors: xot
