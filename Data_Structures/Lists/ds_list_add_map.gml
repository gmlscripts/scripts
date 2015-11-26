#define ds_list_add_map
/// ds_list_add_map(id,map)
//
//  Adds a map to the given list and marks the position
//  to ensure proper nesting when encoding for JSON.
//
//      id          list data structure, real
//      map         the map to add to the given list
//
/// GMLscripts.com/license
{
    var list,map,pos;
    list = argument0;
    map = argument1;
    pos = ds_list_size(list);
    ds_list_add(list,map);
    ds_list_mark_as_map(list,pos);
}