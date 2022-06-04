/// @func   pulse(a, b, x)
///
/// @desc   Returns 1 when (a <= x <= b), 0 otherwise.
///
/// @param  {real}      a           lower bound
/// @param  {real}      b           upper bound
/// @param  {real}      x           value
///
/// @return {real}      0 or 1
///
/// GMLscripts.com/license

function pulse(a, b, x)
{
    if (a <= x && x <= b) return 1;
    return 0;
}
