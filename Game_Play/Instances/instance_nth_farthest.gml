#define instance_nth_farthest
/// instance_nth_farthest(x,y,obj,n)
//
//  Returns the id of the nth farthest instance of an object
//  from a given point or noone if none is found.
//
//      x,y       point coordinates, real
//      obj       object index (or all), real
//      n         proximity, real
//
/// GMLscript.com/license
{
    var pointx,pointy,object,n,list,farthest;
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    n = argument3;
    n = min(max(1,n),instance_number(object));
    list = ds_priority_create();
    farthest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
    repeat (n) farthest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return farthest; 
}