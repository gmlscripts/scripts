ds_map_clone
============

Shallow clones a map to a new copy and returns the created map.

    map = ds_map_create();                  //      resulting map clone:
    map[? "Hello"] = "World";               //      {
    map[? "Goodbye"] = "Cruel World";       //          Hello: "World"
                                            //          Goodbye: "Cruel World"
    clone = ds_map_clone(map);              //      }
    
script: ds_map_clone.gml

contributors: RaniSputnik
