#define color_scale
/// color_scale(color,scale)
//
//  Returns a given color with each component scaled by a factor.
//
//      color       RGB color, real
//      scale       scaling factor [0..1], real
//
/// GMLscripts.com/license
{
    var c,v,t;
    c = argument0;
    v = argument1 * 65336;
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