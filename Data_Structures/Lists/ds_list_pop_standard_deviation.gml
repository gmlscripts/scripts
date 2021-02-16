#define ds_list_pop_standard_deviation
/// ds_list_pop_standard_deviation(id)
//  GM:S v2.3+ compatible
//
//  Returns the population standard deviation of the values in a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_pop_standard_deviation(id) {
    var i,j,k,m;
    j = 0;
    k = ds_list_size(id);
    for (i=0; i<k; i+=1) j += ds_list_find_value(id, i);
    m = j / k;
    j = 0;
    for (i=0; i<k; i+=1) j += sqr(ds_list_find_value(id, i) - m);
    return sqrt(j / k);
}