#define ds_list_min
/// ds_list_min(id)
//
//  Returns the minimum value of a given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var n, minv, i, val;
    n = ds_list_size(argument0);
    minv = ds_list_find_value(argument0, 0);

    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(argument0, i);
        if (val < minv)
        minv = val;
    }

    return minv;
}