/// @func   ds_list_sum(list)
///
/// @desc   Returns the sum of all values in a list.
///         If the list is empty, undefined is returned.
///         All list elements must be comparable.
///
/// @param  {list}      list        list data structure
///
/// @return {any}       sum of values
///
/// GMLscripts.com/license

function ds_list_sum(list)
{
    var n = ds_list_size(list);
    var sum = ds_list_find_value(list, 0);

    for (var i=1; i<n; i++) sum += ds_list_find_value(list, i);

    return sum;
}
