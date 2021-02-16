#define ds_list_sum
/// ds_list_sum(id)
//  GM:S v2.3+ compatible
//
//  Returns the sum of all values in a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_sum(id) {
    var i,j,k;
    j = 0;
    k = ds_list_size(id);
    for (i=0; i<k; i+=1) j += ds_list_find_value(id, i);
    return j;
}