#define ds_list_pop_standard_deviation
/// ds_list_pop_standard_deviation(id)
//
//  Returns the population standard deviation of the values in a given list.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var i,j,k,m;
    j = 0;
    k = ds_list_size(argument0);
    for (i=0; i<k; i+=1) j += ds_list_find_value(argument0, i);
    m = j / k;
    j = 0;
    for (i=0; i<k; i+=1) j += sqr(ds_list_find_value(argument0, i) - m);
    return sqrt(j / k);
}
