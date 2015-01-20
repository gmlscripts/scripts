#define clamp
/// clamp(x,a,b)
//
//  Returns a when (x < a), b when (x > b), x otherwise.
//
//      x           value, real
//      a           lower bound, real
//      b           upper bound, real
//
/// GMLscripts.com/license
{
    if (argument0 < argument1) return argument1;
    if (argument0 > argument2) return argument2;
    return argument0;
}