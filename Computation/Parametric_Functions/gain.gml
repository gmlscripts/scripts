#define gain
/// gain(g,x)
//
//  Returns the given value with a gain function applied to it.
//
//      g           gain, real
//      x           value, real
//
//  If x varies over the [0,1] interval, then the result also
//  varies over that interval. The 0 and 1 endpoints of the
//  interval are mapped onto themselves. Regardless of the value
//  of g, all gain functions return 0.5 when x is 0.5. Above
//  and below 0.5 the gain function consists of two scaled-down
//  bias curves forming an S-shaped curve.
//
/// GMLscripts.com/license
{
    var p;
    p = (1 / argument0 - 2) * (1 - 2 * argument1);
    if (argument1 < 0.5) return argument1 / (p + 1);
    else return (p - argument1) / (p - 1);
}