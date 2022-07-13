/// @func   lcm(a, b)
///
/// @desc   Returns the least common multiple of the given integers.
///
/// @param  {real}      a           positive integer
/// @param  {real}      b           positive integer
///
/// @return {real}      least common multiple
///
/// GMLscripts.com/license

function lcm(a, b)
{
    var c = a * b;
    while (b != 0) {
        var r = a mod b;
        a = b;
        b = r;
    }
    return abs(c / a);
}
