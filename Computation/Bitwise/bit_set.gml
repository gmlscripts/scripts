#define bit_set
/// bit_set(bitfield,bit)
//  GM:S v2.3+ compatible
//
//  Returns a given bitfield with a given bit set to 1.
//
//  @param bitfield    number or group of bits, integer
//  @param bit         bit index to change, integer
//
/// GMLscripts.com/license
function bit_set(bitfield,bit) {
    return bitfield | (1 << bit);
}