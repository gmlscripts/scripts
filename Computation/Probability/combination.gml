/// @func   combination(set, subset)
///
/// @desc   Returns the number of unique subsets created from all
///         combinations of a number of elements. The order of the
///         chosen elements is not significant. Returns (-1) on error.
///
/// @param  {real}      set         number of elements
/// @param  {real}      subset      size of the subset
///
/// @return {real}      number of combinations
///
/// GMLscripts.com/license

function combination(set, subset)
{
    var n = floor(set);
    var k = floor(subset);
    var m = n - k;
    if (m < 0) return (-1);
    var f = 1;
    var i = 1;
    var j = 1;
    for (var l=2; l<=n; l+=1) {
        f *= l;
        if (l == k) i = f;
        if (l == m) j = f;
    }
    return (f / (i * j));
}
