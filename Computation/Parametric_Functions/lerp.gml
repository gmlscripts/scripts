#define lerp
/// lerp(a,b,x)
//
//  Returns a if x is 0, b if x is 1, for other values 
//  of x returns linear interpolation of a to b controlled by x.
//
//      a           lower value, real
//      b           upper value, real
//      x           fraction (0-1), real
//
/// GMLscripts.com/license
{
    return (argument0 + argument2 * (argument1 - argument0));
}
