#define ds_list_standard_deviation
/// ds_list_standard_deviation(id [,sample])
//  GM:S v2.3+ compatible
//
//  Returns the standard deviation of the values in a given list.
//
//  @param id          list data structure, real
//  @param sample      true if the list is made up of a sample, bool
//
/// GMLscripts.com/license
function ds_list_standard_deviation(id) {
    var n, avg, sum, i;
    n = ds_list_size(id);
    avg = 0;
    sum = 0;
    
    for (i=0; i<n; i+=1) avg += ds_list_find_value(id, i);
    avg /= n;
    for (i=0; i<n; i+=1) sum += sqr(ds_list_find_value(id, i) - avg);
    
    return sqrt(sum/(n - sample));
}