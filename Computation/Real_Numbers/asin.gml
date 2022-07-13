/// @func   asin(rad, n)
///
/// @desc   Returns the arcsine of a given angle for the nth repetition.
///
/// @param  {real}      rad         angle in radians
/// @param  {real}      n           repetition, integer
///
/// @return {real}      arcsine
///
/// GMLscripts.com/license

function asin(rad, n)
{
    var a = arcsin(rad);
    return a - 2 * n * a + pi * n + floor(n / 2) * 4 * a;
}
