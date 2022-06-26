/// @func   factorial(number)
///
/// @desc   Returns the factorial of a given number. Numbers
///         larger than 18 produce inaccruate results due to
///         floating-point precision limitations.
///
/// @param  {real}      number      non-negative integer
///
/// @return {real}      factorial of given number
///
/// GMLscripts.com/license

function factorial(number)
{
    if (number <= 1) return 1;
    return number * factorial(number - 1);
}
