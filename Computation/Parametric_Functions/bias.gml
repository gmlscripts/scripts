/// @func   bias(b, x)
///
/// @desc   Returns the given value with a bias function applied to it.
///
///         If x varies over the [0,1] interval, then the result also
///         varies over that interval. The 0 and 1 endpoints of the
///         interval are mapped onto themselves. Other values are shifted
///         upward toward 1 if b is greater than 0.5, and shifted 
///         downward toward 0 if b is less than 0.5.
///
/// @param  {real}      b           bias
/// @param  {real}      x           value
///
/// @return {real}      adjusted value
///
/// GMLscripts.com/license

function bias(b, x)
{
    return x / ((1 / b - 2) * (1 - x) + 1);
}
