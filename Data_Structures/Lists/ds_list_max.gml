/// @func   ds_list_max(list)
///
/// @desc   Returns the maximum value in a list.
///         If the list is empty, undefined is returned.
///         All list elements must be comparable.
///
/// @param  {list}      list        list data structure
///
/// @return {any}       maximum value
///
/// GMLscripts.com/license

function ds_list_max(list)
{
    var n = ds_list_size(list);
    var maxv = ds_list_find_value(list, 0);

    for (var i=1; i<n; i++) {
        var val = ds_list_find_value(list, i);
        if (val > maxv) maxv = val;
    }

    return maxv;
}
