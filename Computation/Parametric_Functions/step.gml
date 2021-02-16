#define step
/// step(a,x)
//  GM:S v2.3+ compatible
//
//  Returns 0 when (x < a), 1 otherwise.
//
//  @param a       threshold value, real
//  @param x       value, real
//
/// GMLscripts.com/license
function step(a,x) {
    return (x >= a);
}