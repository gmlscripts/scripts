#define smoothstep
/// smoothstep(a,b,x)
//
//  Returns 0 when (x < a), 1 when (x >= b), a smooth transition
//  from 0 to 1 otherwise, or (-1) on error (a == b).
//
//      a           upper bound, real
//      b           lower bound, real
//      x           value, real
//
/// GMLscripts.com/license
{
    var p;
    if (argument2 < argument0) return 0;
    if (argument2 >= argument1) return 1;
    if (argument0 == argument1) return -1;
    p = (argument2 - argument0) / (argument1 - argument0);
    return (p * p * (3 - 2 * p));
}
