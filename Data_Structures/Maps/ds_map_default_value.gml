/// @func   ds_map_default_value(map, key, val)
///
/// @desc   Returns the value of a key from a given map,
///         inserting a default value into the map if
///         the key does not yet exist.
///
/// @param  {map}       map         map data structure
/// @param  {any}       key         key in the map
/// @param  {any}       val         default value to insert
///
/// @return {any}       value for the key
///
/// GMLscripts.com/license

function ds_map_default_value(map, key, val)
{
    if (!ds_map_exists(map, key)) {
        ds_map_add(map, key, val);
        return val;
    }
    return ds_map_find_value(map, key);
}
