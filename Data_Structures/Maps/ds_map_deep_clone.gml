/// @func   ds_map_deep_clone(map)
///
/// @desc   Clones a map deeply to a new copy,
///         cloning any nested maps and lists,
///         and returning the created root map.
///
/// @param  {map}       map         map to clone
///
/// @return {map}       deep-cloned map
///
/// GMLscripts.com/license

function ds_map_deep_clone(map)
{
    var json = json_encode(map);
    var clone = json_decode(json);
    return clone;
}
