#define clamp
/// clamp(x,a,b)
//  GM:S v2.3+ compatible
//
//  Returns a when (x < a), b when (x > b), x otherwise.
//
//  @param x           value, real
//  @param a           lower bound, real
//  @param b           upper bound, real
//
/// GMLscripts.com/license
function clamp(x,a,b) {
    if (x < a) return a;
    if (x > b) return b;
    return x;
}