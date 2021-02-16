#define ds_map_clone
/// ds_map_clone(map)
//  GM:S v2.3+ compatible
//
//  Clones a map simply to a new copy 
//  and returns the created map.
//
//  @param map         map to clone
//
/// GMLscripts.com/license
function ds_map_clone(map) {
    var clone;
    clone = ds_map_create();
    ds_map_copy(clone, map);
    return clone;
}