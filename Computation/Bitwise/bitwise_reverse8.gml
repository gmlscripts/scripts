/// @func   bitwise_reverse8(n)
///
/// @desc   Returns the given 8-bit integer with bits in reverse order.
///
/// @param  {real}      n           8-bit integer
///
/// @return {real}      given integer with bits reversed
///
/// GMLscripts.com/license

function bitwise_reverse8(n)
{
    n = (n & 0x55) << 1 | (n & 0xAA) >> 1;
    n = (n & 0x33) << 2 | (n & 0xCC) >> 2;
    n = (n & 0x0F) << 4 | (n & 0xF0) >> 4;
    return n;
}