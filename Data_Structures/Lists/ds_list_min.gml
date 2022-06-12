/// @func   ds_list_min(list)
///
/// @desc   Returns the minimum value in a list.
///         If the list is empty, undefined is returned.
///         All list elements must be comparable.
///
/// @param  {list}      list        list data structure
///
/// @return {any}       minimum value
///
/// GMLscripts.com/license

function ds_list_min(list)
{
    var n = ds_list_size(list);
    var minv = ds_list_find_value(list, 0);

    for (var i=1; i<n; i++) {
        var val = ds_list_find_value(list, i);
        if (val < minv) minv = val;
    }

    return minv;
}
