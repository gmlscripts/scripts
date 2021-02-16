#define gcd
/// gcd(a,b)
//  GM:S v2.3+ compatible
//
//  Returns the greatest common divisor of the given integers.
//
//      a,b         non-negative integers, real
//
/// GMLscripts.com/license
function gcd(a,b) {
    var r;
    a = max(a,b);
    b = min(a,b);
    while (b != 0) {
        r = a mod b;
        a = b;
        b = r;
    }
    return a;
}