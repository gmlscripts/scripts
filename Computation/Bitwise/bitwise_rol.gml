#define bitwise_rol
/// bitwise_rol(n,count,size)
//
//  Returns the given number rotated to
//  the left by given number of bits.
//
//      n           number to be rotated left
//      count       number of bits to rotate
//      size        size of number in bits
//
/// GMLscripts.com/license
{
    var n, count, size;
    n = argument0;
    count = argument1;
    size = argument2;
    return ((n << count) & (1 << size)-1) | (n >> (size - count));
}
