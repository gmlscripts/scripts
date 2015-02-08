#define draw_sprite_inverted_ext
/// draw_sprite_inverted_ext(sprite,subimage,x,y,xscale,yscale,rot,color,alpha)
//
//  Draws a sprite with inverted colors. This accepts the same arguments
//  as draw_sprite_ext().
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position, real
//      xscale      horizontal scaling, real
//      yscale      vertical scaling, real
//      rot         rotation in degrees, real
//      color       color blending, real
//      alpha       alpha blending, real
//
//  Notes: Resets blending mode to normal. This may not work quite as 
//  desired when used with surfaces and an alpha of less than one.
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
    d3d_transform_add_translation(-xo,-yo,0);
    d3d_transform_add_scaling(argument4,argument5,1);
    d3d_transform_add_rotation_z(argument6);
    d3d_transform_add_translation(argument2,argument3,0);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha);
    draw_sprite_ext(argument0,argument1,xo,yo,1,1,0,argument7,argument8);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    d3d_transform_stack_pop();
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(a);
    return 0;
}