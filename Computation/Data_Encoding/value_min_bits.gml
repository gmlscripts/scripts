#define value_min_bits
/// value_min_bits(n,size)
//  GM:S v2.3+ compatible
//
//  Returns the smallest number of words of a given
//  size that can be used to store a given value.
//
//  @param n           value, integer
//  @param size        word size, integer
//
/// GMLscripts.com/license
function value_min_bits(n,size) {
    return ceil(floor(logn(2, n) + 1) / size);
}