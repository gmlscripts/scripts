/// @func   is_even(value)
///
/// @desc   Returns true if a given value is even, false otherwise.
///
/// @param  {real}      value       value to test
///
/// @return {bool}      true if value is even
///
/// GMLscripts.com/license

function is_even(value)
{
    return (value & 1) == 0;
}
