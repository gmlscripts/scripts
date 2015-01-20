#define dec_to_oct
/// dec_to_oct(dec)
//
//  Returns a string of octal digital (3 bits each)
//  representing the given decimal integer.
//
//      dec         non-negative integer, real
//
/// GMLscripts.com/license
{
    var dec, oct, o;
    dec = argument0
    oct = "";
    o = "01234567";
    do {
        oct = string_char_at(o, (dec & 7) + 1) + oct;
        dec = dec >> 3;
    } until (dec == 0);
    return oct;
}