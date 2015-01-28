#define sprite_edit_begin
/// sprite_edit_begin(sprite)
//
//  Edit a sprite dynamically using drawing commands. This script begins
//  an editing session and returns a session ID. All further drawing 
//  commands are directed to a surface holding a horizontal strip of frames
//  from a given sprite. A call to script sprite_edit_end() ends editing.
//
//      sprite      sprite to edit, real
//
//  Note: Blending mode is reset to normal after calling this script.
//
/// GMLscripts.com/license
{
    var sprite,a,w,h,n,xoff,yoff,surface,i;
    sprite = argument0;
    a = draw_get_alpha();
    w = sprite_get_width(sprite);
    h = sprite_get_height(sprite);
    n = sprite_get_number(sprite);
    xoff = sprite_get_xoffset(sprite);
    yoff = sprite_get_yoffset(sprite);
    surface = surface_create(w*n,h);
    surface_set_target(surface);
    draw_clear(c_black);
    draw_set_blend_mode_ext(bm_one,bm_zero);
    draw_set_alpha(1);
    for(i=0; i<n; i+=1) {
        draw_sprite(sprite,i,i*w+xoff,yoff);
    }
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(a);
    return (string(surface)+':'+string(sprite));
}