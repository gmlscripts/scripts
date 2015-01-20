#define combination
/// combination(set,subset)
//
//  Returns the number of unique subsets created from all
//  combinations of a number of elements, or (-1) on error. 
//
//      set         number of elements, real
//      subset      size of the subset, real
//
/// GMLscripts.com/license
{
    var f,i,j,k,l,m,n;
    n = floor(argument0);
    k = floor(argument1);
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