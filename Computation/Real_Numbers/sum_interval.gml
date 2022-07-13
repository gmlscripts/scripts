/// @func   sum_interval(m, n)
///
/// @desc   Returns the sum of consecutive integers
///         between m and n (inclusive).
///
/// @param  {real}      m           integer
/// @param  {real}      n           integer
///
/// @return {real}      sum of integers
///
/// GMLscripts.com/license

function sum_interval(m, n)
{
    return (abs(n - m) + 1) * (n + m) / 2;
}
