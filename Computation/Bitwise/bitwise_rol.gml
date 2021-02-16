#define bitwise_rol
/// bitwise_rol(n,count,size)
//  GM:S v2.3+ compatible
//
//  Returns the given number rotated to
//  the left by given number of bits.
//
//  @param n           number to be rotated left
//  @param count       number of bits to rotate
//  @param size        size of number in bits
//
/// GMLscripts.com/license
function bitwise_rol(n,count,size) {
    
    return ((n << count) & (1 << size)-1) | (n >> (size - count));
}