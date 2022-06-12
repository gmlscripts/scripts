/// @func   ds_list_flip(list)
///
/// @desc   Rearranges the values of a list in reverse order.
///
/// @param  {list}      list        list data structure
///
/// GMLscripts.com/license

function ds_list_flip(list)
{
    for (var i=ds_list_size(list); i>=0; i--) {
        ds_list_add(list, ds_list_find_value(list, i));
        ds_list_delete(list, i);
    }
}
