#define ds_map_clone
/// ds_map_clone(map)
//
//  Shallow clones a map to a new copy
//  and returns the created map.
//
//      map         map to clone
//
/// GMLScripts.com/license
{
    var map, clone;
    map = argument0;
    clone = ds_map_create();
    ds_map_copy(clone, map);
    return clone;
}