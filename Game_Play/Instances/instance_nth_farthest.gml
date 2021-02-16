#define instance_nth_farthest
/// instance_nth_farthest(x,y,obj,n)
//  GM:S v2.3+ compatible
//
//  Returns the id of the nth farthest instance of an object
//  from a given point or noone if none is found.
//
//      x,y       point coordinates, real
//  @param obj       object index (or all), real
//  @param n         proximity, real
//
/// GMLscript.com/license
function instance_nth_farthest(x,y,obj,n) {
    var pointpointobject,list,farthest;
    pointx = x;
    pointy = y;
    object = obj;
    n = min(max(1,n),instance_number(object));
    list = ds_priority_create();
    farthest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
    repeat (n) farthest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return farthest; 
}