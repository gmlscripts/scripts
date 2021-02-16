#define lerp
/// lerp(a,b,x)
//  GM:S v2.3+ compatible
//
//  Returns a if x is 0, b if x is 1, for other values 
//  of x returns linear interpolation of a to b controlled by x.
//
//  @param a           lower value, real
//  @param b           upper value, real
//  @param x           fraction (0-1), real
//
/// GMLscripts.com/license
function lerp(a,b,x) {
    return (a + x * (b - a));
}