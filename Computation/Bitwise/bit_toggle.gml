#define bit_toggle
/// bit_toggle(bitfield,bit)
//
//  Returns a given bitfield with a given bit toggled.
//
//      bitfield    number or group of bits, integer
//      bit         bit index to change, integer
//
/// GMLscripts.com/license
{
    return argument0 ^ (1 << argument1);
}