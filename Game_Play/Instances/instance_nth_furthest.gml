/// @func   instance_nth_furthest(x, y, object, n)
///
/// @desc   Returns the id of the nth furthest instance of an object
///         from a given point or noone if none is found.
///
/// @param  {real}      x           test point x-coordinate
/// @param  {real}      y           test point y-coordinate
/// @param  {object}    object      object index (or all)
/// @param  {real}      n           proximity
///
/// @return {instance}  object instance id
///
/// GMLscripts.com/license

function instance_nth_furthest(x, y, object, n)
{
    n = clamp(instance_number(object), 1, n);
    var list = ds_priority_create();
    var furthest = noone;
    with (object) ds_priority_add(list, id, distance_to_point(x, y));
    repeat (n) furthest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return furthest;
}
