/// @func   gcd(a,b)
///
/// @desc   Returns the greatest common divisor of the given integers.
///
/// @param  {real}      a           positive integer
/// @param  {real}      b           positive integer
///
/// @return {real}      greatest common divisor
///
/// GMLscripts.com/license

function gcd(a, b)
{
    while (b != 0) {
        var r = a mod b;
        a = b;
        b = r;
    }
    return abs(a);
}
