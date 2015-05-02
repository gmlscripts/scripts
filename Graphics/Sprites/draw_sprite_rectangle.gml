#define draw_sprite_rectangle
/// draw_sprite_rectangle(sprite,subimg,x1,y1,x2,y2,left,top,right,bottom)
//
//  Draws a rectangle using a sprite sliced into 9 sections.
//  The 3x3 sections are used to draw the four corners, the
//  four edges, and the center of the rectangle. The center
//  and edge sections are stretched to fill the respective
//  areas of the rectangle.
//
//      sprite  sprite index
//      subimg  sprite subimage
//      x1,y1   top-left corner of rectangle
//      x2,y2   bottom-right corner of rectangle
//      left    left edge width in pixels
//      top     top edge width in pixels
//      right   right edge width in pixels
//      bottom  bottom edge width in pixels
//
/// GMLscripts.com/license
{
    var spr = argument0,
        img = argument1,
        x1  = argument2,
        y1  = argument3,
        x2  = argument4,
        y2  = argument5,
        l   = argument6,
        t   = argument7,
        r   = argument8,
        b   = argument9;
    
    var x3 = x1 + l;
    var y3 = y1 + t;
    var x4 = x2 - r + 1;
    var y4 = y2 - b + 1;
    var x5 = sprite_get_width(spr) - r;
    var y5 = sprite_get_height(spr) - b;
    var w = x5 - l;
    var h = y5 - t;
    var xs = (x4 - x3) / w;
    var ys = (y4 - y3) / h;
    
    draw_sprite_part_ext(spr, img, 0,  0,  l, t, x1, y1, 1.0, 1.0, c_white, 1.0);
    draw_sprite_part_ext(spr, img, l,  0,  w, t, x3, y1, xs,  1.0, c_white, 1.0);
    draw_sprite_part_ext(spr, img, x5, 0,  r, t, x4, y1, 1.0, 1.0, c_white, 1.0);
    draw_sprite_part_ext(spr, img, 0,  t,  l, h, x1, y3, 1.0, ys,  c_white, 1.0);
    draw_sprite_part_ext(spr, img, l,  t,  w, h, x3, y3, xs,  ys,  c_white, 1.0);
    draw_sprite_part_ext(spr, img, x5, t,  r, h, x4, y3, 1.0, ys,  c_white, 1.0);
    draw_sprite_part_ext(spr, img, 0,  y5, l, b, x1, y4, 1.0, 1.0, c_white, 1.0);
    draw_sprite_part_ext(spr, img, l,  y5, w, b, x3, y4, xs,  1.0, c_white, 1.0);
    draw_sprite_part_ext(spr, img, x5, y5, r, b, x4, y4, 1.0, 1.0, c_white, 1.0);
    
    return 0;
}