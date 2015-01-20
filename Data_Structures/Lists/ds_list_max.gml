#define ds_list_max
/// ds_list_max(id)
//
//  Returns the maximum value of a given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var n, maxv, i, val;
    n = ds_list_size(argument0);
    maxv = ds_list_find_value(argument0, 0);

    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(argument0, i);
        if (val > maxv)
        maxv = val;
    }

    return maxv;
}
