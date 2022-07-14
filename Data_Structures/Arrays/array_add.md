array_add
=========

NOTE: The GameMaker function `array_push()` produces the same results
and obsoletes this script. It has been removed from the site
index and appears here for historical purposes only.

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

script: array_add.gml

contributors: YellowAfterlife
