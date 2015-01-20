#define ds_list_flip
/// ds_list_flip(id)
//
//  Rearranges the values of a list in reverse order.
//
//      id          list data structure, real
//
/// GMLscripts.com/license
{
    var dsid,i;
    dsid = argument0; 
    for(i=ds_list_size(dsid);i>=0;i-=1) {
        ds_list_add(dsid,ds_list_find_value(dsid,i));
        ds_list_delete(dsid,i);
    }
}