#define ds_map_default_value
/// ds_map_default_value(map,key,val)
//  GM:S v2.3+ compatible
//
//  Returns the value of a key from a given map,
//  inserting a default value into the map if 
//  the key does not yet exist.
//
//  @param map         id of the map to modify
//  @param key         key in the map
//  @param val         default value to insert
//
/// GMLscripts.com/license
function ds_map_default_value(map,key,val) {
    
    if (!ds_map_exists(map, key)) {
        ds_map_add(map, key, val);
        return val;
    } else {
        return ds_map_find_value(map, key);
    }
}