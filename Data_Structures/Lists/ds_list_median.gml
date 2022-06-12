/// @func   ds_list_median(list)
///
/// @desc   Returns the median of the values in the given list.
///
/// @param  {list}      list        list data structure
///
/// @return {any}       median value
///
/// GMLscripts.com/license

function ds_list_median(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var sort = ds_list_create();

    for (var i=0; i<n; i++) ds_list_add(sort, ds_list_find_value(list, i));
    ds_list_sort(sort, true);
    var middle = ds_list_find_value(sort, n div 2);
    ds_list_destroy(sort);

    return middle;
}
