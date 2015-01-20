#define value_min_bits
/// value_min_bits(n,size)
//
//  Returns the smallest number of bits that can be used to store
//  the given value. If a word size is given, the value returned 
//  is expressed in words.
//
//      n           positive integer, real
//      size        word size, positive integer, real (optional)
//
/// GMLscripts.com/license
{
    return ceil(floor(logn(2, argument0) + 1) / max(1, argument1));
}