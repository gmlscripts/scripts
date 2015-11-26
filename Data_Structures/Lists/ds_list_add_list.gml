#define ds_list_add_list
/// ds_list_add_list(id,list)
//
//  Adds a list to the given parent list and marks the position
//  to ensure proper nesting when encoding for JSON.
//
//      id          list data structure, real
//      list        the list to add
//
/// GMLscripts.com/license
{
    var parent,list,pos;
    parent = argument0;
    list = argument1;
    pos = ds_list_size(parent);
    ds_list_add(parent,list);
    ds_list_mark_as_list(parent,pos);
}