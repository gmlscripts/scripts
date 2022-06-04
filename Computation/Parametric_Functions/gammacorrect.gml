/// @func   gammacorrect(gamma, x)
///
/// @desc   Returns the given value with gamma correction applied to it.
///
///         If x varies over the [0,1] interval, then the result also
///         varies over that interval. The 0 and 1 endpoints of the 
///         interval are mapped onto themselves. Other values are 
///         shifted upward toward 1 if gamma is greater than 1 and 
///         shifted downward toward 0 if gamma is less than 1.
///
/// @param  {real}      gamma       correction value
/// @param  {real}      x           value
///
/// @return {real}      adjusted value
///
/// GMLscripts.com/license

function gammacorrect(gamma, x)
{
    return power(x, 1 / gamma);
}
