#define deceleration_distance
/// deceleration_distance(speed,friction)
//
//  Returns the distance travelled by an object moving at
//  a given speed and with a given rate of deceleration.
//
//      speed       speed, real
//      friction    deceleration rate, real
//
/// GMLscripts.com/license
{
    var s,f;
    s = argument0;
    f = argument1;
    if (f == 0) return -1 else return (s*(s-f))/(2*f);
}