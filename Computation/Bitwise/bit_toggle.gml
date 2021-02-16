#define bit_toggle
/// bit_toggle(bitfield,bit)
//  GM:S v2.3+ compatible
//
//  Returns a given bitfield with a given bit toggled.
//
//  @param bitfield    number or group of bits, integer
//  @param bit         bit index to change, integer
//
/// GMLscripts.com/license
function bit_toggle(bitfield,bit) {
    return bitfield ^ (1 << bit);
}