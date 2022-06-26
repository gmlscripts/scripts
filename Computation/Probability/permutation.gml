/// @func   permutation(set, subset)
///
/// @desc   Returns the number of unique subsets created from all
///         permutations of a number of elements in which the order
///         of the chosen elements is significant, or (-1) on error.
///
/// @param  {real}      set         number of elements
/// @param  {real}      subset      size of the subset
///
/// @return {real}      number of permutations
///
/// GMLscripts.com/license

function permutation(set, subset)
{
    var n = floor(set);
    var k = floor(subset);
    var m = n - k;
    if (m < 0) return (-1);
    var f = 1;
    for (var l=n; l>m; l-=1) f *= l;
    return f;
}
