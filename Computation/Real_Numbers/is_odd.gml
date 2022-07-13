/// @func   is_odd(value)
///
/// @desc   Returns true if a given value is odd, false otherwise.
///
/// @param  {real}      value       value to test
///
/// @return {bool}      true if value is odd
///
/// GMLscripts.com/license

function is_odd(value)
{
    return (value & 1) == 1;
}
