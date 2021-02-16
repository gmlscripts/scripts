#define ease_towards_direction
/// ease_towards_direction(target,rate,easing)
//  GM:S v2.3+ compatible
//
//  Rotates the calling instance towards the target direction,
//  at a given rate and easing. The larger the easing factor,
//  the more gradually the turn completes.
//
//  @param target      angle to turn towards (degrees), real
//  @param rate        maximum turning rate (degrees), real
//  @param easing      amount of easing [0..1], real
//
/// GMLscripts.com/license
function ease_towards_direction(target,rate,easing) {
    direction += median(-rate, rate, (1-easing) * angle_difference(target, direction));
    return 0;
}