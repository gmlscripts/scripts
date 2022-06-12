/// @func   ds_list_geometric_mean(list)
///
/// @desc   Returns the geometric mean of values in a list.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      geometric mean
///
/// GMLscripts.com/license

function ds_list_geometric_mean(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var geo = 1;

    for (var i=0; i<n; i++) geo *= ds_list_find_value(list, i);

    return power(geo, 1 / n);
}
