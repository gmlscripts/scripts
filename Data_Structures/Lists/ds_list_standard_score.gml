#define ds_list_standard_score
/// ds_list_standard_score(id,pos)
//
//  Returns the standard score (z-score) of the 
//  value at a given position in a given list.
//
//      id          list data structure, real
//      pos         position in the list, real
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

    return (ds_list_find_value(argument0, argument1) - avg)/sqrt(sum/n);
}
