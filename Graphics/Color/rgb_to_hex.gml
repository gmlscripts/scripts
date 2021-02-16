#define rgb_to_hex
/// rgb_to_hex(r,g,b)
//  GM:S v2.3+ compatible
//
//  Returns a given color as a hexadecimal string in RRGGBB format.
//  Depends on dec_to_hex().
//
//      r,g,b       red, green, blue color components [0..255], real
//
/// GMLscripts.com/license
function rgb_to_hex(r,g,b) {
    
    r = r & 255;
    g = g & 255;
    b = b & 255;
    return dec_to_hex(r << 16 | g << 8 | b);
}