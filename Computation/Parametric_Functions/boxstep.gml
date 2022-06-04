/// @func   boxstep(a, b, x)
///
/// @desc   Returns 0 when (x <= a), 1 when (x >= b), a linear transition
///         from 0 to 1 when (a < x < b), or (-1) on error (a == b). 
///
/// @param  {real}      a           lower bound
/// @param  {real}      b           upper bound
/// @param  {real}      x           value
///
/// @return {real}      value between 0 and 1
///
/// GMLscripts.com/license

function boxstep(a, b, x)
{
    var p;
    if (a == b) return (-1);
    p = (x - a) / (b - a);
    return clamp(p, 0, 1);
}
