/// @func   instance_nth_farthest(x, y, obj, n)
///
/// @desc   Returns the id of the nth farthest instance of an object
///         from a given point or noone if none is found.
///
/// @param  {real}      x           point x-coordinate
/// @param  {real}      y           point y-coordinate
/// @param  {object}    obj         object index (or all)
/// @param  {real}      n           proximity
///
/// @return {instance}  object instance id
///
/// GMLscripts.com/license

function instance_nth_farthest(x, y, obj, n)
{
    n = min(max(1, n), instance_number(obj));
    var list = ds_priority_create();
    var farthest = noone;
    with (obj) ds_priority_add(list, id, distance_to_point(x, y));
    repeat (n) farthest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return farthest;
}
