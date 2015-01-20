#define ds_list_geometric_mean
/// ds_list_geometric_mean(id)
//
//  Returns the geometric mean of the values in a given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var n, geo, i;
    n = ds_list_size(argument0);
    geo = 1;

    for (i=0; i<n; i+=1) geo *= ds_list_find_value(argument0, i);

    return power(geo, 1/n);
}