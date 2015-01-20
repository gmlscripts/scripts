#define ds_list_median
/// ds_list_median(id)
//
//  Returns the median of the values in the given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var i,j,k;
    j = ds_list_create();
    k = ds_list_size(argument0);
    for (i=0; i<k; i+=1) ds_list_add(j, ds_list_find_value(argument0, i));
    ds_list_sort(j, true);
    i = ds_list_find_value(j,k div 2);
    ds_list_destroy(j);
    return i;
}