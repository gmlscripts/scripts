/// @func   bitwise_reverse16(n)
///
/// @desc   Returns the given 16-bit integer with bits in reverse order.
///
/// @param  {real}      n           16-bit integer
///
/// @return {real}      given integer with bits reversed
///
/// GMLscripts.com/license

function bitwise_reverse16(n)
{
    n = (n & 0x5555) << 1 | (n & 0xAAAA) >> 1;
    n = (n & 0x3333) << 2 | (n & 0xCCCC) >> 2;
    n = (n & 0x0F0F) << 4 | (n & 0xF0F0) >> 4;
    n = (n & 0x00FF) << 8 | (n & 0xFF00) >> 8;
    return n;
}