#define ds_list_range
/// ds_list_range(id)
//  GM:S v2.3+ compatible
//
//  Returns the range of the values in a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_range(id) {
    var n, maxv, minv, i, val;
    n = ds_list_size(id);
    maxv = ds_list_find_value(id, 0);
    minv = maxv;
    
    for (i=1; i<n; i+=1) {
        val = ds_list_find_value(id, i);
        if (val > maxv)
        maxv = val;
        else if (val < minv)
        minv = val;
    }
    
    return (maxv - minv);
}