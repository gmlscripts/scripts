#define collision_point_list
/// collision_point_list(x1,y1,obj,prec,notme)
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given point, or noone if no instances found.
//
//      x1,y1       point to check for collision, real
//      obj         object to check for collision (or all), real
//      prec        true for precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
{
    var x1,y1,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    obj = argument2;
    prec = argument3;
    notme = argument4;
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