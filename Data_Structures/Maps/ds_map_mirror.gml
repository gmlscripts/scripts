/// @func   ds_map_mirror(map)
///
/// @desc   Exchanges map keys with map values.
///
/// @param  {map}       map         map data structure
///
/// GMLscripts.com/license

function ds_map_mirror(map)
{
    var temp = ds_map_create();
    var key = ds_map_find_first(map);
    repeat (ds_map_size(map)) {
        var val = ds_map_find_value(map, key);
        ds_map_add(temp, val, key);
        key = ds_map_find_next(map, key);
    }
    ds_map_copy(map, temp);
    ds_map_destroy(temp);
}
