#define value_min_bits
/// value_min_bits(n,size)
//
//  Returns the smallest number of bits that can 
//  be used to store a given value.
//
//      n           value, integer
//      size        word size, integer
//
/// GMLscripts.com/license
{
    return ceil(floor(logn(2, argument0) + 1) / argument1);
}