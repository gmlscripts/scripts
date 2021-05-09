/// @func   bit_toggle(bitfield, bit)
///
/// @desc   Returns a bitfield with a given bit toggled.
///
/// @param  {real}      bitfield    integer or group of bits
/// @param  {real}      bit         bit index to toggle
///
/// @return {real}      bitfield with bit toggled
///
/// GMLscripts.com/license

function bit_toggle(bitfield, bit)
{
    return bitfield ^ (1 << bit);
}