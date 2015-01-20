#define bias
/// bias(b,x)
//
//  Returns the given value with a bias function applied to it.
//
//      b           bais, real
//      x           value, real
//
//  If x varies over the [0,1] interval, then the result also
//  varies over that interval. The 0 and 1 endpoints of the
//  interval are mapped onto themselves. Other values are shifted
//  upward toward 1 if b is greater than 0.5, and shifted 
//  downward toward 0 if b is less than 0.5.
//
/// GMLscripts.com/license
{
    return argument1 / ((1 / argument0 - 2) * (1 - argument1) + 1);
}