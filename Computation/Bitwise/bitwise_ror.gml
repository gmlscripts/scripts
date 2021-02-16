#define bitwise_ror
/// bitwise_ror(n,count,size)
//  GM:S v2.3+ compatible
//
//  Returns the given number rotated to 
//  the right by given number of bits.
//
//  @param n           number to be rotated right
//  @param count       number of bits to rotate
//  @param size        size of number in bits
//
/// GMLscripts.com/license
function bitwise_ror(n,count,size) {
    
    return (n >> count) | ((n << (size - count)) & (1 << size)-1);
}