#define permutation
/// permutation(set,subset)
//  GM:S v2.3+ compatible
//
//  Returns the number of unique subsets created from all 
//  permutations of a number of elements in which the order 
//  of the chosen elements is significant, or (-1) on error.
//
//  @param set         number of elements, real
//  @param subset      size of the subset, real
//
/// GMLscripts.com/license
function permutation(set,subset) {
    var f,k,l,m,n;
    n = floor(set);
    k = floor(subset);
    m = n - k;
    if (m < 0) return (-1);
    else {
        f = 1;
        for (l=n; l>m; l-=1) f *= l;
        return f;
    }
}