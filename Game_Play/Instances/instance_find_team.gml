/// @func   instance_find_team(object, team)
///
/// @desc   Returns the nearest instance of an object whose local
///         variable "team" has the same value as a given team,
///         or noone if no instance is found.
///
/// @param  {object}    object      object to look for (or all)
/// @param  {any}       team        team value to find
///
/// @return {instance}  nearest matching instance, or noone
///
/// GMLscripts.com/license

function instance_find_team(object, team)
{
    var ds = ds_priority_create();
    ds_priority_add(ds, noone, 100000000);
    with (object) {
        if (self.team == team && id != other.id) {
            ds_priority_add(ds, id, point_distance(x, y, other.x, other.y));
        }
    }
    var selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}
