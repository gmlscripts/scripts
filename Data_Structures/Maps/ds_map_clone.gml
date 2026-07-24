/// @func   ds_map_clone(map)
///
/// @desc   Clones a map simply to a new copy
///         and returns the created map.
///
/// @param  {map}       map         map to clone
///
/// @return {map}       cloned map
///
/// GMLscripts.com/license

function ds_map_clone(map)
{
    var clone = ds_map_create();
    ds_map_copy(clone, map);
    return clone;
}
