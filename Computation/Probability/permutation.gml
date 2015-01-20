#define permutation
/// permutation(set,subset)
//
//  Returns the number of unique subsets created from all 
//  permutations of a number of elements in which the order 
//  of the chosen elements is significant, or (-1) on error.
//
//      set         number of elements, real
//      subset      size of the subset, real
//
/// GMLscripts.com/license
{
    var f,k,l,m,n;
    n = floor(argument0);
    k = floor(argument1);
    m = n - k;
    if (m < 0) return (-1);
    else {
        f = 1;
        for (l=n; l>m; l-=1) f *= l;
        return f;
    }
}