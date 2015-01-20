#define angle_difference
/// angle_difference(angle1, angle2)
//
//  Returns the relative angle [-180..180] between the given angles.
//
//      angle1      1st direction in degrees
//      angle2      2nd direction in degress
//
/// GMLscripts.com/license
{
    return ((((argument0 - argument1) mod 360) + 540) mod 360) - 180;
}
