#define hex_to_color
/// hex_to_color(hex)
//  GM:S v2.3+ compatible
//
//  Returns an RGB color from a given hexadecimal color code.
//  Depends on hex_to_dec().
//
//  @param hex         hexadecimal color in RRGGBB format, string
//
/// GMLscripts.com/license
function hex_to_color(hex) {
    var dec,col;
    dec = hex_to_dec(hex);
    col = (dec & 16711680) >> 16 | (dec & 65280) | (dec & 255) << 16;
    return col;
}