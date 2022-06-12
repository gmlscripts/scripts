/// @func   ds_list_sum_squares(list)
///
/// @desc   Returns the sum of squares of all values in a given list.
///         If the list is empty, undefined is returned.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      sum of values squared
///
/// GMLscripts.com/license

function ds_list_sum_squares(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var sum = 0;

    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i));

    return sum;
}
