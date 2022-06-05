/// @func   smoothstep(a, b, x)
///
/// @desc   Returns 0 when (x < a), 1 when (x >= b), a smooth transition
///         from 0 to 1 otherwise, or (-1) on error (a == b).
///
/// @param  {real}      a           upper bound
/// @param  {real}      b           lower bound
/// @param  {real}      x           value
///
/// @return {real}      adjusted value
///
/// GMLscripts.com/license

function smoothstep(a, b, x)
{
    if (a == b) return -1;
    if (x < a) return 0;
    if (x >= b) return 1;
    var p = (x - a) / (b - a);
    return (p * p * (3 - 2 * p));
}
