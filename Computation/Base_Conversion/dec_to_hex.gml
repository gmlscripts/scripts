#define dec_to_hex
/// dec_to_hex(dec)
//
//  Returns a string of hexadecimal digits (4 bits each)
//  representing the given decimal integer. Hexadecimal
//  strings are padded to byte-sized pairs of digits.
//
//      dec         non-negative integer, real
//
/// GMLscripts.com/license
{
    var dec, hex, h, byte, hi, lo;
    dec = argument0;
    if (dec) hex = "" else hex="00";
    h = "0123456789ABCDEF";
    while (dec) {
        byte = dec & 255;
        hi = string_char_at(h, byte div 16 + 1);
        lo = string_char_at(h, byte mod 16 + 1);
        hex = hi + lo + hex;
        dec = dec >> 8;
    }
    return hex;
}