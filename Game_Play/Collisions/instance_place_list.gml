#define instance_place_list
/// instance_place_list(x,y,obj)
//  GM:S v2.3+ compatible
//
//  Returns a list data structure populated with the ids of instances 
//  which would collide with the current instance if it were placed 
//  at a given position, or noone if no instances found.
//
//      x,y         placement of current instance, real
//  @param obj         object to check for collision (or all), real
//
/// GMLscripts.com/license
function instance_place_list(x,y,obj) {
    var x1,y1,dsid,this,that,i;
    x1 = x;
    y1 = y;
    dsid = ds_list_create();
    this = id;
    with (obj) {
        that = id;
        with (this) {
            i = instance_place(x1,y1,that);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}