#define next_pow2
/// next_pow2(n)
//
//  Returns the next power-of-two greater than or equal to a given value.
//
//      n       positive integer
//
/// GMLscripts.com/license
{
    return 1 << ceil(log2(argument0));
}