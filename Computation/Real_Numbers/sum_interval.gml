#define sum_interval
/// sum_interval(m,n)
//  GM:S v2.3+ compatible
//
//  Returns the sum of positive integers between m and n, inclusive.
//
//  @param m       positive integer, real
//  @param n       positive integer, real
//
/// GMLscripts.com/license
function sum_interval(m,n) {
    
    m = floor(min(m,n));
    n = floor(max(m,n));
    return (n*n+n)/2 - (m*m+m)/2 + m;
}