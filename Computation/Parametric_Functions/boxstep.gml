#define boxstep
/// boxstep(a,b,x)
//
//  Returns 0 when (x <= a), 1 when (x >= b), a linear transition
//  from 0 to 1 when (a < x < b), or (-1) on error (a == b). 
//
//      a           lower bound, real
//      b           upper bound, real
//      x           value, real
//
/// GMLscripts.com/license
{
    var p;
    if (argument0 == argument1) return (-1);
    p = (argument2 - argument0) / (argument1 - argument0);
    if (p <= 0) return 0;
    if (p >= 1) return 1;
    return p;
}