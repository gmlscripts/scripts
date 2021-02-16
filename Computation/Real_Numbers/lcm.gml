#define lcm
/// lcm(a,b)
//  GM:S v2.3+ compatible
//
//  Returns the least common multiple of the given integers.
//
//      a,b         non-negative integers, real
//
/// GMLscripts.com/license
function lcm(a,b) {
    var c,r;
    a = max(a,b);
    b = min(a,b);
    c = a * b;
    while (b != 0) {
        r = a mod b;
        a = b;
        b = r;
    }
    return (c / a);
}