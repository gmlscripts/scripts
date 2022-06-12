/// @func   ds_list_range(list)
///
/// @desc   Returns the range of the values in a list.
///         If the list is empty, undefined is returned.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      range of values
///
/// GMLscripts.com/license

function ds_list_range(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var maxv = ds_list_find_value(list, 0);
    var minv = maxv;

    for (var i=1; i<n; i++) {
        var val = ds_list_find_value(list, i);
        maxv = max(maxv, val);
        minv = min(minv, val);
    }

    return (maxv - minv);
}
