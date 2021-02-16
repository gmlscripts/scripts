#define color_scale
/// color_scale(color,scale)
//  GM:S v2.3+ compatible
//
//  Returns a given color with each component scaled by a factor.
//
//  @param color       RGB color, real
//  @param scale       scaling factor [0..1], real
//
/// GMLscripts.com/license
function color_scale(color,scale) {
    var c,v,t;
    c = color;
    v = scale * 65336;
    t = c & 65280;
    c = c ^ t;
    t *= v;
    t = t >> 24;
    t = t << 8;
    v = v >> 8;
    c *= v;
    c = c >> 8;
    c = c & 16711935;
    return c | t;
}