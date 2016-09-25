#define ds_list_add_list
/// ds_list_add_list(id,list)
//
//  Adds a list to a given list and marks it. 
//  Marking ensures the data of a nested list is
//  included when its parent is encoded as JSON.
//
//      id          list data structure, real
//      list        list to add to list, real
//
/// GMLscripts.com/license
{
    var parent, list, pos;
    parent = argument0;
    list = argument1;
    pos = ds_list_size(parent);
    ds_list_add(parent, list);
    ds_list_mark_as_list(parent, pos);
}