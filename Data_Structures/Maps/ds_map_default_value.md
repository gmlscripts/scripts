ds_map_default_value
====================

Returns the value of a key from a given map,
inserting a default value into the map if 
the key does not yet exist.

    map = ds_map_create();
    map[? "Hello"] = "World";
    map[? "Goodbye"] = "Cruel World";
    
    A = ds_map_default_value(map, "GML", "Scripts");       // A == "Scripts"
    B = ds_map_default_value(map, "Hello", "I Love You");  // B == "World"

    //  resulting map:
    //  {
    //      GML: "Scripts"
    //      Hello: "World"
    //      Goodbye: "Cruel World"
    //  }

script: ds_map_default_value.gml

contributors: RaniSputnik
