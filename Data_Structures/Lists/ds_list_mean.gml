/// @func   ds_list_mean(list)
///
/// @desc   Returns the arithmetic mean of values in a list.
///         If the list is empty, undefined is returned.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      mean value
///
/// GMLscripts.com/license

function ds_list_mean(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;

    return avg;
}
