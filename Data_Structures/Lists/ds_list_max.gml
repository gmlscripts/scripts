#define ds_list_max
/// ds_list_max(id)
//  GM:S v2.3+ compatible
//
//  Returns the maximum value of a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_max(id) {
    var n, maxv, i, val;
    n = ds_list_size(id);
    maxv = ds_list_find_value(id, 0);
    
    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(id, i);
        if (val > maxv)
        maxv = val;
    }
    
    return maxv;
}