/// @func   bit_set(bitfield, bit)
///
/// @desc   Returns a bitfield with a given bit set to 1.
///
/// @param  {real}      bitfield    integer or group of bits
/// @param  {real}      bit         bit index to set
///
/// @return {real}      bitfield with bit set
///
/// GMLscripts.com/license

function bit_set(bitfield, bit)
{
    return bitfield | (1 << bit);
}
