#define turn_towards_direction
/// turn_towards_direction(target,rate)
//  GM:S v2.3+ compatible
//
//  Rotates the calling instance towards the target direction,
//  at a given rate. 
//
//  @param target      angle to turn towards (degrees), real
//  @param rate        maximum turning rate (degrees), real
//
/// GMLscripts.com/license
function turn_towards_direction(target,rate) {
    direction += median(-rate, rate, angle_difference(target, direction));
    return 0;
}