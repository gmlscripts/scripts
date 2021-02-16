#define ds_list_add_list
/// ds_list_add_list(id,list)
//  GM:S v2.3+ compatible
//
//  Adds a list to a given list and marks it. 
//  Marking ensures the data of a nested list is
//  included when its parent is encoded as JSON.
//
//  @param id          list data structure, real
//  @param list        list to add to list, real
//
/// GMLscripts.com/license
function ds_list_add_list(id,list) {
    var parent,  pos;
    parent = id;
    pos = ds_list_size(parent);
    ds_list_add(parent, list);
    ds_list_mark_as_list(parent, pos);
}