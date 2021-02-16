#define instance_find_team
/// instance_find_team(object,team)
//  GM:S v2.3+ compatible
//
//  Returns the nearest instance of an object whose local
//  variable "team" has the same value as a given 
//  or noone if no instance is found.
//
//  @param object      object to look for (or all), real
//  @param team        team value to find, real or string
//
/// GMLscripts.com/license
function instance_find_team(team) {
    var ds,selected;
    ds = ds_priority_create();
    ds_priority_add(ds,noone,100000000);
    with (object) {
        if (team == team && id != other.id) {
            ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
        }
    }
    selected = ds_priority_find_min(ds);
    ds_priority_destroy(ds);
    return selected;
}