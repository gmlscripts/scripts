#define draw_sprite_inverted
/// draw_sprite_inverted(sprite,subimage,x,y)
//
//  Draws a sprite with inverted colors. This accepts the same arguments
//  as draw_sprite().
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position, real
//
//  Notes: Resets blending mode to normal.
//
/// GMLscripts.com/license
{
    var w = sprite_get_width(argument0);
    var h = sprite_get_height(argument0);
    var xo = sprite_get_xoffset(argument0);
    var yo = sprite_get_yoffset(argument0);
    var a = draw_get_alpha();
    draw_set_alpha(0);
    d3d_transform_stack_push();
    d3d_transform_add_translation(argument2-xo,argument3-yo,0);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha);
    draw_sprite_ext(argument0,argument1,xo,yo,1,1,0,c_white,1);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    d3d_transform_stack_pop();
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(a);
    return 0;
}