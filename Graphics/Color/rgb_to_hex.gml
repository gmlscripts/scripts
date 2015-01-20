#define rgb_to_hex
/// rgb_to_hex(r,g,b)
//
//  Returns a given color as a hexadecimal string in RRGGBB format.
//  Depends on dec_to_hex().
//
//      r,g,b       red, green, blue color components [0..255], real
//
/// GMLscripts.com/license
{
    var r,g,b;
    r = argument0 & 255;
    g = argument1 & 255;
    b = argument2 & 255;
    return dec_to_hex(r << 16 | g << 8 | b);
}