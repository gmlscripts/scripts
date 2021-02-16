#define combination
/// combination(set,subset)
//  GM:S v2.3+ compatible
//
//  Returns the number of unique subsets created from all
//  combinations of a number of elements, or (-1) on error. 
//
//  @param set         number of elements, real
//  @param subset      size of the subset, real
//
/// GMLscripts.com/license
function combination(set,subset) {
    var f,i,j,k,l,m,n;
    n = floor(set);
    k = floor(subset);
    m = n - k;
    if (m < 0) return (-1);
    else {
        f = 1;
        i = 1;
        j = 1;
        for (l=2; l<=n; l+=1) {
            f *= l;
            if (l == k) i = f;
            if (l == m) j = f;
        }
        return (f / (i * j));
    }
}