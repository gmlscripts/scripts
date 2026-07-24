/// @func   instance_nearest_notme(x, y, obj)
///
/// @desc   Returns the nearest instance to a given point,
///         disregarding the calling instance.
///
/// @param  {real}      x           x-coordinate
/// @param  {real}      y           y-coordinate
/// @param  {object}    obj         object to find
///
/// @return {instance}  nearest instance, or noone
///
/// GMLscripts.com/license

function instance_nearest_notme(x, y, obj)
{
    instance_deactivate_object(id);
    var n = instance_nearest(x, y, obj);
    instance_activate_object(id);
    return n;
}
