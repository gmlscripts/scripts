/// @func   ds_list_pop_standard_deviation(list)
///
/// @desc   Returns the population standard deviation for values in a list.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      population standard deviation
///
/// GMLscripts.com/license

function ds_list_pop_standard_deviation(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;

    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return sqrt(sum / n);
}
