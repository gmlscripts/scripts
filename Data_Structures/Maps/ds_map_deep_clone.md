ds_map_deep_clone
=================

Deeply clones a map to a new copy, cloning any nested maps and lists,
and returning the created root map.

    map = ds_map_create();                  //      resulting map D:
    map[? "Hello"] = "World";               //      {
    map[? "Goodbye"] = "Cruel World";       //          Hello: "World"
                                            //          Goodbye: "Cruel World"
    clone = ds_map_create();                //          Clone: 
                                            //          {
    ds_map_copy(clone, map);                //              Hello: "World"
                                            //              Goodbye: "Cruel World"
    map[? "Clone"] = clone;                 //              Yesterday: "Tomorrow" 
    map[? "Zero"] = "Infinity";             //          }
    clone[? "Yesterday"] = "Tomorrow";      //          Zero: "Infinity"
                                            //      }
    D = ds_map_deep_clone(map);

script: ds_map_deep_clone.gml

contributors: RaniSputnik
