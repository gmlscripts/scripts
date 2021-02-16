#define angle_difference
/// angle_difference(angle1, angle2)
//  GM:S v2.3+ compatible
//
//  Returns the relative angle [-180..180] between the given angles.
//
//  @param angle1      1st direction in degrees
//  @param angle2      2nd direction in degress
//
/// GMLscripts.com/license
function angle_difference(angle1, angle2) {
    return ((((angle1 - angle2) mod 360) + 540) mod 360) - 180;
}