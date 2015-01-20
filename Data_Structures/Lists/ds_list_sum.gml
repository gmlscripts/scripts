#define ds_list_sum
/// ds_list_sum(id)
//
//  Returns the sum of all values in a given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var i,j,k;
    j = 0;
    k = ds_list_size(argument0);
    for (i=0; i<k; i+=1) j += ds_list_find_value(argument0, i);
    return j;
}
