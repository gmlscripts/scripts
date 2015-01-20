#define ds_list_cv
/// ds_list_cv(id[,sample])
//
//  Returns the coefficient of deviation for the values in a given list.
//
//      id          list data structure, real
//      sample      true if the list is made up of a sample, bool
//
/// GMLscripts.com/license
{
    var n, avg, sum, i;
    n = ds_list_size(argument0);
    avg = 0;
    sum = 0;

    for (i=0; i<n; i+=1) avg += ds_list_find_value(argument0, i);
    avg /= n;
    for (i=0; i<n; i+=1) sum += sqr(ds_list_find_value(argument0, i) - avg);

    return sqrt(sum/(n - argument1))/avg;
}