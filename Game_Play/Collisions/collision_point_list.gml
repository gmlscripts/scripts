#define collision_point_list
/// collision_point_list(x1,y1,obj,prec,notme)
//  GM:S v2.3+ compatible
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given point, or noone if no instances found.
//
//      x1,y1       point to check for collision, real
//  @param obj         object to check for collision (or all), real
//  @param prec        true for precise collision checking, bool
//  @param notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
function collision_point_list(x1,y1,obj,prec,notme) {
    var dsid,i;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_point(x1,y1,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}