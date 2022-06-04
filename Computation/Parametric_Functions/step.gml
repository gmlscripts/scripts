/// @func   step(a, x)
///
/// @desc   Returns 0 when (x < a), 1 otherwise.
///
/// @param  {real}      a           threshold value
/// @param  {real}      x           value
///
/// @return {real}      0 or 1
///
/// GMLscripts.com/license

function step(a, x)
{
    if (x < a) return 0;
    return 1;
}
