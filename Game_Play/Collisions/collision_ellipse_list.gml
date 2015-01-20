#define collision_ellipse_list
/// collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given ellipse, or noone if no instances found.
//
//      x1,y1       corner of the collision ellipse (filled), real
//      x2,y2       opposite corner of the collision ellipse (filled), real
//      obj         object to check for collision (or all), real
//      prec        set to true for precise collision checking, bool
//      notme       set to true to ignore the calling instance, bool
//
/// GMLscripts.com/license
{
    var x1,y1,x2,y2,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    obj = argument4;
    prec = argument5;
    notme = argument6;
    dsid = ds_list_create();
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_ellipse(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
