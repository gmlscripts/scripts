#define ds_map_default_value
/// ds_map_default_value(map,key,val)
// 
//  Inserts a value into the given map if
//  the given key doesn't exist. Returns the
//  value of the key.
//
//      map         The id of the map to modify
//      key         The key in the map
//      val         The default value to insert
//
/// GMLScripts.com/license
{
	var map, key, val;
	map = argument0;
	key = argument1;
	val = argument2;
	if (!ds_map_exists(map,key) {
		ds_map_add(map,key,val);
		return val;
	} else {
		return ds_map_find_value(map,key);
	}
} 