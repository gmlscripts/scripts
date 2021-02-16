#define instance_nth_nearest
/// instance_nth_nearest(x,y,obj,n)
//  GM:S v2.3+ compatible
//
//  Returns the id of the nth nearest instance of an object
//  to a given point or noone if none is found.
//
//      x,y       point coordinates, real
//  @param obj       object index (or all), real
//  @param n         proximity, real
//
/// GMLscripts.com/license
function instance_nth_nearest(x,y,obj,n) {
    var pointpointobject,list,nearest;
    pointx = x;
    pointy = y;
    object = obj;
    n = min(max(1,n),instance_number(object));
    list = ds_priority_create();
    nearest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}