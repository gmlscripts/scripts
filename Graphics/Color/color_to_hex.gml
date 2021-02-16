#define color_to_hex
/// color_to_hex(color)
//  GM:S v2.3+ compatible
//
//  Returns a given color as a hexadecimal string in RRGGBB format.
//  Depends on dec_to_hex().
//
//  @param color       RGB color, real
//
/// GMLscripts.com/license
function color_to_hex(color) {
    var dec;
    dec = (color & 16711680) >> 16 | (color & 65280) | (color & 255) << 16;
    return dec_to_hex(dec);
}