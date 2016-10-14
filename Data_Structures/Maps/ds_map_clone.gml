#define ds_map_clone
/// ds_map_clone(map)
//
//  Clones a map simply to a new copy 
//  and returns the created map.
//
//      map         map to clone
//
/// GMLscripts.com/license
{
    var map, clone;
    map = argument0;
    clone = ds_map_create();
    ds_map_copy(clone, map);
    return clone;
}