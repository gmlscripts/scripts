#define draw_sprite_flip_ext
/// draw_sprite_flip_ext(sprite,subimg,x,y,xscale,yscale,rot,color,alpha,fliph,flipv)
//
//  Draws a sprite in the same manner as draw_sprite_ext() and
//  can also flip the sprite horizontally and/or vertically.
//  When flipped, the sprite will be drawn within its normal 
//  bounding box rather than being flipped about its origin.
//
//      fliph       true to flip horizontally
//      flipv       true to flip vertically
//
/// GMLscripts.com/license
{
    var sprite,subimg,posx,posy,xscale,yscale,rot,color,alpha,fliph,flipv;
    sprite = argument0;
    subimg = argument1;
    posx   = argument2;
    posy   = argument3;
    xscale = argument4;
    yscale = argument5;
    rot    = argument6;
    color  = argument7;
    alpha  = argument8;
    fliph  = argument9;
    flipv  = argument10;

    if (fliph) {
        posx  = 2 * (sprite_get_width(sprite) - sprite_get_xoffset(sprite));
        posx  = xscale * (posx - sprite_get_bbox_right(sprite)) + argument2;
        xscale *= -1;
    }
    if (flipv) {
        posy  = 2 * (sprite_get_height(sprite) - sprite_get_yoffset(sprite));
        posy  = yscale * (posy - sprite_get_bbox_bottom(sprite)) + argument3;
        yscale *= -1;
    }
    draw_sprite_ext(sprite,subimg,posx,posy,xscale,yscale,rot,color,alpha);
    return 0;
}