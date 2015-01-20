#define acos
/// acos(rad,n)
//
//  Returns the arccosine of a given angle for the nth repetition.
//
//      rad         angle, radians, real
//      n           repetition, integer, real
//
/// GMLscripts.com/license
{
    var a,n,p2;
    a = arccos(argument0);
    n = argument1;
    p2 = 2*pi;
    return a - 2 * n * a + p2 * n + floor(n / 2) * (4 * a - p2);
}