/// @func   bit_test(bitfield, bit)
///
/// @desc   Returns the value of a selected bit within a bitfield.
///
/// @param  {real}      bitfield    integer or group of bits
/// @param  {real}      bit         bit index to test
///
/// @return {real}      value of selected bit, 0 or 1
///
/// GMLscripts.com/license

function bit_test(bitfield, bit)
{
    return 1 & (bitfield >> bit);
}
