/// @func   bit_clear(bitfield, bit)
///
/// @desc   Returns a bitfield with a given bit cleared to 0.
///
/// @param  {real}      bitfield    integer or group of bits
/// @param  {real}      bit         bit index to clear
///
/// @return {real}      bitfield with bit cleared
///
/// GMLscripts.com/license

function bit_clear(bitfield, bit) 
{
    return bitfield & ~(1 << bit);
}
