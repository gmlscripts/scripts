#define bitwise_reverse16
/// bitwise_reverse16(n)
//
//  Returns the given number with bits in reverse order.
//
//      n           16-bit integer, real
//
/// GMLscripts.com/license
{
    var n;
    n = argument0;
    n = (n & $5555) <<  1 | (n & $AAAA) >>  1;
    n = (n & $3333) <<  2 | (n & $CCCC) >>  2;
    n = (n & $0F0F) <<  4 | (n & $F0F0) >>  4;
    n = (n & $00FF) <<  8 | (n & $FF00) >>  8;
    return n;
}