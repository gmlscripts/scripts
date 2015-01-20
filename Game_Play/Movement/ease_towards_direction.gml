#define ease_towards_direction
/// ease_towards_direction(target,rate,easing)
//
//  Rotates the calling instance towards the target direction,
//  at a given rate and easing. The larger the easing factor,
//  the more gradually the turn completes.
//
//      target      angle to turn towards (degrees), real
//      rate        maximum turning rate (degrees), real
//      easing      amount of easing [0..1], real
//
/// GMLscripts.com/license
{
    direction += median(-argument1, argument1, (1-argument2) * angle_difference(argument0, direction));
    return 0;
}