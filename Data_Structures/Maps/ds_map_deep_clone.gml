#define ds_map_deep_clone
/// ds_map_deep_clone(map)
//  GM:S v2.3+ compatible
//
//  Clones a map deeply to a new copy, 
//  cloning any nested maps and lists,
//  and returning the created root map.
//
//  @param map         The map to clone
//
/// GMLscripts.com/license
function ds_map_deep_clone(map) {
    var json, clone;
    json = json_encode(map);
    clone = json_decode(json);
    return clone;
}