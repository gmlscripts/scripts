#define ds_map_deep_clone
/// ds_map_deep_clone(map)
// 
//  Clones a map to a new copy, also
//  clones any nested maps and lists.
//
//      map         The map to clone
//
/// GMLScripts.com/license
{
	var map, json, clone;
	map = argument0;
	json = json_encode(map);
	clone = json_decode(json);
	return clone;
} 