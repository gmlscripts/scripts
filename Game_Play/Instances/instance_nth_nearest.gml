/// @func   instance_nth_nearest(x, y, object, n)
///
/// @desc   Returns the id of the nth nearest instance of an object
///         to a given point or noone if none is found.
///
/// @param  {real}      x           test point x-coordinate
/// @param  {real}      y           test point y-coordinate
/// @param  {object}    object      object index (or all)
/// @param  {real}      n           proximity
///
/// @return {instance}  object instance id
///
/// GMLscripts.com/license

function instance_nth_nearest(x, y, object, n)
{
    n = clamp(instance_number(object), 1, n);
    var list = ds_priority_create();
    var nearest = noone;
    with (object) ds_priority_add(list, id, distance_to_point(x, y));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}
