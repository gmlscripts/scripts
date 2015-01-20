#define hex_to_color
/// hex_to_color(hex)
//
//  Returns an RGB color from a given hexadecimal color code.
//  Depends on hex_to_dec().
//
//      hex         hexadecimal color in RRGGBB format, string
//
/// GMLscripts.com/license
{
    var hex,dec,col;
    hex = argument0;
    dec = hex_to_dec(hex);
    col = (dec & 16711680) >> 16 | (dec & 65280) | (dec & 255) << 16;
    return col;
}