#define sum_interval
/// sum_interval(m,n)
//
//  Returns the sum of positive integers between m and n, inclusive.
//
//      m       positive integer, real
//      n       positive integer, real
//
/// GMLscripts.com/license
{
    var m,n;
    m = floor(min(argument0,argument1));
    n = floor(max(argument0,argument1));
    return (n*n+n)/2 - (m*m+m)/2 + m;
}