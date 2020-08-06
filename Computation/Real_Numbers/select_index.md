select_index
============

Returns the index of an argument matching a given value.

    value = keyboard_lastchar;
    index = select_index(value, "A", "B", "G", "O");
    choice = select(index, "Apple", "Banana", "Grapes", "Orange");
    show_message("You selected: " + choice);

In the above example, an item is selected based on the last
keyboard key pressed.
    
script: select_index.gml

contributors: xot
