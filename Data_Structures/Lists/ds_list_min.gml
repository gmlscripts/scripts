#define ds_list_min
/// ds_list_min(id)
//  GM:S v2.3+ compatible
//
//  Returns the minimum value of a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_min(id) {
    var n, minv, i, val;
    n = ds_list_size(id);
    minv = ds_list_find_value(id, 0);
    
    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(id, i);
        if (val < minv)
        minv = val;
    }
    
    return minv;
}