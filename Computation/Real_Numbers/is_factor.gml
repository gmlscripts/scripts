/// @func   is_factor(divisor, value)
///
/// @desc   Returns true if a given divisor is a factor of
///         a given value, false otherwise.
///
/// @param  {real}      divisor     divisor
/// @param  {real}      value       value
///
/// @return {bool}      true if a factor
///
/// GMLscripts.com/license

function is_factor(divisor, value)
{
    var remainder = value mod divisor;
    return (remainder == 0 || remainder == divisor);
}
