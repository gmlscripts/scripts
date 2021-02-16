#define draw_sprite_flip_ext
/// draw_sprite_flip_ext(sprite,subimg,x,y,xscale,yscale,rot,color,alpha,fliph,flipv)
//  GM:S v2.3+ compatible
//
//  Draws a sprite in the same manner as draw_sprite_ext() and
//  can also flip the sprite horizontally and/or vertically.
//  When flipped, the sprite will be drawn within its normal 
//  bounding box rather than being flipped about its origin.
//
//  @param fliph       true to flip horizontally
//  @param flipv       true to flip vertically
//
/// GMLscripts.com/license
function draw_sprite_flip_ext(sprite,subimg,x,y,xscale,yscale,rot,color,alpha,fliph,flipv) {
    var pospos;
    posx   = x;
    posy   = y;
    rot    = rot;
    color  = color;
    alpha  = alpha;
    fliph  = fliph;
    flipv  = subimg0;
    
    if (fliph) {
        posx  = 2 * (sprite_get_width(sprite) - sprite_get_xoffset(sprite));
        posx  = xscale * (posx - sprite_get_bbox_right(sprite)) + x;
        xscale *= -1;
    }
    if (flipv) {
        posy  = 2 * (sprite_get_height(sprite) - sprite_get_yoffset(sprite));
        posy  = yscale * (posy - sprite_get_bbox_bottom(sprite)) + y;
        yscale *= -1;
    }
    draw_sprite_ext(sprite,subimg,posx,posy,xscale,yscale,rot,color,alpha);
    return 0;
}