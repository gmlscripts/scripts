#define bit_test
/// bit_test(bitfield,bit)
//  GM:S v2.3+ compatible
//
//  Returns the state of a bit within a given bitfield.
//
//  @param bitfield    number or group of bits, integer
//  @param bit         bit index to test, integer
//
/// GMLscripts.com/license
function bit_test(bitfield,bit) {
    return 1 & (bitfield >> bit);
}