array_add
=========

Returns the given array with elements appended to it.
If an array is not given, the given value is returned.

    names[0] = "Charlie";
    names[1] = "Juliett";
    names[2] = "Mike";
    
    names = array_add(names, "Oscar", "Romeo", "Victor");
    
    //  names[0] == "Charlie"
    //  names[1] == "Juliett"
    //  names[2] == "Mike"
    //  names[3] == "Oscar"
    //  names[4] == "Romeo"
    //  names[5] == "Victor"

Note: GM:Studio has a 16 argument limit.

script: array_add.gml

contributors: YellowAfterlife