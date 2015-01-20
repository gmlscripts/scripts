#define gcd
/// gcd(a,b)
//
//  Returns the greatest common divisor of the given integers.
//
//      a,b         non-negative integers, real
//
/// GMLscripts.com/license
{
    var a,b,r;
    a = max(argument0,argument1);
    b = min(argument0,argument1);
    while (b != 0) {
        r = a mod b;
        a = b;
        b = r;
    }
    return a;
}