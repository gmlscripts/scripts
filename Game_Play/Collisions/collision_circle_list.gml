#define collision_circle_list
/// collision_circle_list(x1,y1,radius,obj,prec,notme)
//  GM:S v2.3+ compatible
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given circle, or noone if no instances found.
//
//      x1,y1       center of the collision circle (filled), real
//  @param radius      radius of the collision circle (filled), real
//  @param obj         object to check for collision (or all), real
//  @param prec        true for precise collision checking, bool
//  @param notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
function collision_circle_list(x1,y1,radius,obj,prec,notme) {
    var dsid,i;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_circle(x1,y1,radius,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}