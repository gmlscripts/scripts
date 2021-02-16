#define boxstep
/// boxstep(a,b,x)
//  GM:S v2.3+ compatible
//
//  Returns 0 when (x <= a), 1 when (x >= b), a linear transition
//  from 0 to 1 when (a < x < b), or (-1) on error (a == b). 
//
//  @param a           lower bound, real
//  @param b           upper bound, real
//  @param x           value, real
//
/// GMLscripts.com/license
function boxstep(a,b,x) {
    var p;
    if (a == b) return (-1);
    p = (x - a) / (b - a);
    if (p <= 0) return 0;
    if (p >= 1) return 1;
    return p;
}