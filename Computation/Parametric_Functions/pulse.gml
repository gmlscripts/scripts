#define pulse
/// pulse(a,b,x)
//  GM:S v2.3+ compatible
//
//  Returns 1 when (a <= x <= b), 0 otherwise.
//
//  @param a           lower bound, real
//  @param b           upper bound, real
//  @param x           value, real
//
/// GMLscripts.com/license
function pulse(a,b,x) {
    return ((a <= x) && (x <= b));
}