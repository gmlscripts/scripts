#define gain
/// gain(g,x)
//  GM:S v2.3+ compatible
//
//  Returns the given value with a gain function applied to it.
//
//  @param g           gain, real
//  @param x           value, real
//
//  If x varies over the [0,1] interval, then the result also
//  varies over that interval. The 0 and 1 endpoints of the
//  interval are mapped onto themselves. Regardless of the value
//  of  all gain functions return 0.5 when x is 0.5. Above
//  and below 0.5 the gain function consists of two scaled-down
//  bias curves forming an S-shaped curve.
//
/// GMLscripts.com/license
function gain(x) {
    var p;
    p = (1 / g - 2) * (1 - 2 * x);
    if (x < 0.5) return x / (p + 1);
    else return (p - x) / (p - 1);
}