/// @func   fibonacci(n)
///
/// @desc   Returns the nth number of the Fibonacci sequence.
///
/// @param  {real}      n           desired number, non-negative integer
///
/// @return {real}      nth Fibonacci number
///
/// GMLscripts.com/license

function fibonacci(n)
{
    return round(power((1 + sqrt(5)) / 2, n) / sqrt(5));
}
