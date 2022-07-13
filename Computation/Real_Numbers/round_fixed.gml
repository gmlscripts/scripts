/// @func   round_fixed(number, places)
///
/// @desc   Returns a given number rounded to the a number of places.
///         If places is positive, the number is rounded on the right
///         side of the decimal separator. If places is negative, the
///         rounding occurs on the left side of the decimal separator.
///
///         eg. round_fixed(2468.1357,  2) == 2468.14
///             round_fixed(2468.1357, -2) == 2500.00
///
/// @param  {real}      number      number to round
/// @param  {real}      places      decimal places to round to
///
/// @return {real}      rounded number
///
/// GMLscripts.com/license

function round_fixed(number, places)
{
    return round(number * power(10, places)) / power(10, places);
}
