#define deceleration_distance
/// deceleration_distance(speed,friction)
//  GM:S v2.3+ compatible
//
//  Returns the distance travelled by an object moving at
//  a given speed and with a given rate of deceleration.
//
//  @param speed       speed, real
//  @param friction    deceleration rate, real
//
/// GMLscripts.com/license
function deceleration_distance(speed,friction) {
    var s,f;
    s = speed;
    f = friction;
    if (f == 0) return -1 else return (s*(s-f))/(2*f);
}