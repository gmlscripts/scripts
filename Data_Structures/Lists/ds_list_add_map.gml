#define ds_list_add_map
/// ds_list_add_map(id,map)
//  GM:S v2.3+ compatible
//
//  Adds a map to a given list and marks it. 
//  Marking ensures the data of a nested map is
//  included when its parent is encoded as JSON.
//
//  @param id          list data structure, real
//  @param map         map to add to list, real
//
/// GMLscripts.com/license
function ds_list_add_map(id,map) {
    var parent,  pos;
    parent = id;
    pos = ds_list_size(parent);
    ds_list_add(parent, map);
    ds_list_mark_as_map(parent, pos);
}