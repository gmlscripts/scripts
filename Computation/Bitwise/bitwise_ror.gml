#define bitwise_ror
/// bitwise_ror(n,count,size)
//
//  Returns the given number rotated to 
//  the right by given number of bits.
//
//      n           number to be rotated right
//      count       number of bits to rotate
//      size        size of number in bits
//
/// GMLscripts.com/license
{
    var n,count,size;
    n = argument0;
    count = argument1;
    size = argument2;
    return (n >> count) | ((n << (size - count)) & (1 << size)-1);
}
