#define ds_list_add_map
/// ds_list_add_map(id,map)
//
//  Adds a map to a given list and marks it. 
//  Marking ensures the data of a nested map is
//  included when its parent is encoded as JSON.
//
//      id          list data structure, real
//      map         map to add to list, real
//
/// GMLscripts.com/license
{
    var parent, map, pos;
    parent = argument0;
    map = argument1;
    pos = ds_list_size(parent);
    ds_list_add(parent, map);
    ds_list_mark_as_map(parent, pos);
}