#define ds_list_flip
/// ds_list_flip(id)
//  GM:S v2.3+ compatible
//
//  Rearranges the values of a list in reverse order.
//
//  @param id          list data structure, real
//
/// GMLscripts.com/license
function ds_list_flip(id) {
    var dsi;
    dsid = id; 
    for(i=ds_list_size(dsid);i>=0;i-=1) {
        ds_list_add(dsid,ds_list_find_value(dsid,i));
        ds_list_delete(dsid,i);
    }
}