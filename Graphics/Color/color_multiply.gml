#define color_multiply
/// color_multiply(color1,color2)
//  GM:S v2.3+ compatible
//
//  Returns the product of the two given colors.
//
//  @param color1      RGB color, real
//  @param color2      RGB color, real
//
/// GMLscripts.com/license
function color_multiply(color1,color2) {
    var c1,c2,t;
    c1 = color1;
    c2 = color2;
    t = ((c1 & 255) * (c2 & 255)) >> 8;
    c1 = c1 >> 8;
    c2 = c2 >> 8;
    t |= ((c1 & 255) * (c2 & 255)) & 65280;
    c1 = c1 & 65280;
    c2 = c2 >> 8;
    t |= ((c1 * c2) & 16711680);
    return t;
}