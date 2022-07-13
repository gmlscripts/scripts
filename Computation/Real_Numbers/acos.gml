/// acos(rad, n)
///
/// @desc   Returns the arccosine of a given angle for the nth repetition.
///
/// @param  {real}      rad         angle in radians
/// @param  {real}      n           repetition, integer
///
/// @return {real}      arccosine
///
/// GMLscripts.com/license

function acos(rad, n)
{
    var a = arccos(rad);
    var tau = 2 * pi;
    return a - 2 * n * a + tau * n + floor(n / 2) * (4 * a - tau);
}
