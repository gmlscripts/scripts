/// @func   ds_list_add_list(parent, list)
///
/// @desc   Adds a list to a given list and marks it.
///         Marking ensures the data of a nested list is
///         included when its parent is encoded as JSON,
///         as well as destroyed when the parent is.
///
/// @param  {list}      parent      list data structure
/// @param  {list}      list        list to add to list
///
/// GMLscripts.com/license

function ds_list_add_list(parent, list)
{
    var pos = ds_list_size(parent);
    ds_list_add(parent, list);
    ds_list_mark_as_list(parent, pos);
}
