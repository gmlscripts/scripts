/// @func   is_power(value, base)
///
/// @desc   Returns true if a given value is a power of the a given base,
///         false if it is not, and undefined if it cannot be determined.
///
/// @param  {real}      value       number
/// @param  {real}      base        exponential base
///
/// @return {bool}      true if a power of base
///
/// GMLscripts.com/license

function is_power(value, base)
{
    if (value == 0 && base == 0) return undefined;
    if (value != 0 && base == 0) return false;
    if (value != 1 && base == 1) return false;
    if (value == 1 || base == 1) return true;
    return ((logn(base, value) mod 1) == 0);
}
