/// @func   instance_find_enemy(object)
///
/// @desc   Returns the nearest instance of an object whose local
///         variable "team" has a different value than the calling
///         instance, or noone if no instance is found.
///
/// @param  {object}    object      object to look for (or all)
///
/// @return {instance}  nearest enemy instance, or noone
///
/// GMLscripts.com/license

function instance_find_enemy(object)
{
    var ds = ds_priority_create();
    ds_priority_add(ds, noone, 100000000);
    with (object) {
        if (team != other.team) {
            ds_priority_add(ds, id, point_distance(x, y, other.x, other.y));
        }
    }
    var selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}
