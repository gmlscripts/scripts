/// @func   next_pow2(n)
///
/// @desc   Returns the next power-of-two greater than or equal to a given value.
///
/// @param  {real}      n       positive integer
///
/// @return {real}      power-of-two
///
/// GMLscripts.com/license

function next_pow2(n)
{
    return 1 << ceil(log2(n));
}
