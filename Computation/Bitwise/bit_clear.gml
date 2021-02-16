#define bit_clear
/// bit_clear(bitfield,bit)
//  GM:S v2.3+ compatible
//
//  Returns a given bitfield with a given bit set to 0.
//
//  @param bitfield    number or group of bits, integer
//  @param bit         bit index to change, integer
//
/// GMLscripts.com/license
function bit_clear(bitfield,bit) {
    return bitfield & ~(1 << bit);
}