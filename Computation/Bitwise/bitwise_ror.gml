/// @func   bitwise_ror(n, count, size)
///
/// @desc   Returns the given integer rotated right a number of bit positions.
///         Note: Bits beyond the given size are masked off.
///
/// @param  {real}      n           integer to be rotated
/// @param  {real}      count       bit positions to rotate
/// @param  {real}      size        size of integer in bits
///
/// @return {real}      rotated integer
///
/// GMLscripts.com/license

function bitwise_ror(n, count, size)
{
    var mask = (1 << size) - 1;
    n &= mask;
    return (n >> count) | (n << (size - count)) & mask;
}