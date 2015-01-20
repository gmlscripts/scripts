#define asin
/// asin(rad,n)
//
//  Returns the arcsine of a given angle for the nth repetition.
//
//      rad         angle, radians, real
//      n           repetition, integer, real
//
/// GMLscripts.com/license
{
    var a,n;
    a = arcsin(argument0);
    n = argument1;
    return a - 2 * n * a + pi * n + floor(n / 2) * 4 * a;
}