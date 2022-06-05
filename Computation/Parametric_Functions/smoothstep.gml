/// @func   smoothstep(a, b, x)
///
/// @desc   Returns 0 when (x <= a), 1 when (x >= b), a smooth transition
///         from 0 to 1 otherwise. If a >= b the result is not defined.
///
/// @param  {real}      a           lower bound
/// @param  {real}      b           upper bound
/// @param  {real}      x           value
///
/// @return {real}      adjusted value
///
/// GMLscripts.com/license

function smoothstep(a, b, x)
{
    var t = clamp((x - a) / (b - a), 0, 1);
    return t * t * (3 - 2 * t);
}
