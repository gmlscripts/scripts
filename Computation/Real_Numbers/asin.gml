#define asin
/// asin(rad,n)
//  GM:S v2.3+ compatible
//
//  Returns the arcsine of a given angle for the nth repetition.
//
//  @param rad         angle, radians, real
//  @param n           repetition, integer, real
//
/// GMLscripts.com/license
function asin(rad,n) {
    var a;
    a = arcsin(rad);
    return a - 2 * n * a + pi * n + floor(n / 2) * 4 * a;
}