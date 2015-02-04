#define bit_set
/// bit_set(bitfield,bit)
//
//  Returns a given bitfield with a given bit set to 1.
//
//      bitfield    number or group of bits, integer
//      bit         bit index to change, integer
//
/// GMLscripts.com/license
{
    return argument0 | (1 << argument1);
}