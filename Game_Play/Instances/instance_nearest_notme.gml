#define instance_nearest_notme
/// instance_nearest_notme(x,y,obj)
//  GM:S v2.3+ compatible
//
//  Returns the nearest instance to a given point,
//  disregarding the calling instance.
//
//      x,y         position, real
//  @param obj         object instance to find, real
//
//  GMLscripts.com/license
function instance_nearest_notme(x,y,obj) {
    instance_deactivate_object(self);
    var n = instance_nearest(  obj);
    instance_activate_object(self);
    return n;
}