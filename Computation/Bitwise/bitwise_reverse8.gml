#define bitwise_reverse8
/// bitwise_reverse8(n)
//  GM:S v2.3+ compatible
//
//  Returns the given number with bits in reverse order.
//
//  @param n           8-bit integer, real
//
/// GMLscripts.com/license
function bitwise_reverse8(n) {
    
    n = (n & $55) <<  1 | (n & $AA) >>  1;
    n = (n & $33) <<  2 | (n & $CC) >>  2;
    n = (n & $0F) <<  4 | (n & $F0) >>  4;
    return n;
}