#define ds_map_default_value
/// ds_map_default_value(map,key,val)
//
//  Returns the value of a key from a given map,
//  inserting a default value into the map if 
//  the key does not yet exist.
//
//      map         id of the map to modify
//      key         key in the map
//      val         default value to insert
//
/// GMLscripts.com/license
{
    var map, key, val;
    map = argument0;
    key = argument1;
    val = argument2;
    if (!ds_map_exists(map, key)) {
        ds_map_add(map, key, val);
        return val;
    } else {
        return ds_map_find_value(map, key);
    }
}