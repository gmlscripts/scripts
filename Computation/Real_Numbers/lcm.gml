#define lcm
/// lcm(a,b)
//
//  Returns the least common multiple of the given integers.
//
//      a,b         non-negative integers, real
//
/// GMLscripts.com/license
{
    var a,b,c,r;
    a = max(argument0,argument1);
    b = min(argument0,argument1);
    c = a * b;
    while (b != 0) {
        r = a mod b;
        a = b;
        b = r;
    }
    return (c / a);
}