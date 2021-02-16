#define ds_list_standard_score
/// ds_list_standard_score(id,pos)
//  GM:S v2.3+ compatible
//
//  Returns the standard score (z-score) of the 
//  value at a given position in a given list.
//
//  @param id          list data structure, real
//  @param pos         position in the list, real
//
/// GMLscripts.com/license
function ds_list_standard_score(id,pos) {
    var n, avg, sum, i;
    n = ds_list_size(id);
    avg = 0;
    sum = 0;
    
    for (i=0; i<n; i+=1) avg += ds_list_find_value(id, i);
    avg /= n;
    for (i=0; i<n; i+=1) sum += sqr(ds_list_find_value(id, i) - avg);
    
    return (ds_list_find_value(id, pos) - avg)/sqrt(sum/n);
}