#define ds_list_geometric_mean
/// ds_list_geometric_mean(id)
//  GM:S v2.3+ compatible
//
//  Returns the geometric mean of the values in a given list.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_geometric_mean(id) {
    var n, geo, i;
    n = ds_list_size(id);
    geo = 1;
    
    for (i=0; i<n; i+=1) geo *= ds_list_find_value(id, i);
    
    return power(geo, 1/n);
}