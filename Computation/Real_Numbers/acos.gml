#define acos
/// acos(rad,n)
//  GM:S v2.3+ compatible
//
//  Returns the arccosine of a given angle for the nth repetition.
//
//  @param rad         angle, radians, real
//  @param n           repetition, integer, real
//
/// GMLscripts.com/license
function acos(rad,n) {
    var a,p2;
    a = arccos(rad);
    p2 = 2*pi;
    return a - 2 * n * a + p2 * n + floor(n / 2) * (4 * a - p2);
}