#define pulse
/// pulse(a,b,x)
//
//  Returns 1 when (a <= x <= b), 0 otherwise.
//
//      a           lower bound, real
//      b           upper bound, real
//      x           value, real
//
/// GMLscripts.com/license
{
    return ((argument0 <= argument2) && (argument2 <= argument1));
}