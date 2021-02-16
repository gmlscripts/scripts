#define gammacorrect
/// gammacorrect(gamma,x);
//  GM:S v2.3+ compatible
//
//  Returns the given value with gamma correction applied to it.
//
//  @param gamma       correction value, real
//  @param x           value, real
//
//  If x varies over the [0,1] interval, then the result also
//  varies over that interval. The 0 and 1 endpoints of the 
//  interval are mapped onto themselves. Other values are 
//  shifted upward toward 1 if gamma is greater than 1 and 
//  shifted downward toward 0 if gamma is less than 1.
//
/// GMLscripts.com/license
function gammacorrect(x); {
    return power(x;, 1 / gamma);
}