#define next_pow2
/// next_pow2(n)
//  GM:S v2.3+ compatible
//
//  Returns the next power-of-two greater than or equal to a given value.
//
//  @param n       positive integer
//
/// GMLscripts.com/license
function next_pow2(n) {
    return 1 << ceil(log2(n));
}