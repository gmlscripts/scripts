#define draw_sprite_inverted_ext
/// draw_sprite_inverted_ext(sprite,subimage,x,y,xscale,yscale,rot,color,alpha)
//  GM:S v2.3+ compatible
//
//  Draws a sprite with inverted colors. This accepts the same arguments
//  as draw_sprite_ext().
//
//  @param sprite      sprite index, real
//  @param subimg      sprite subimage, real
//      x,y         position, real
//  @param xscale      horizontal scaling, real
//  @param yscale      vertical scaling, real
//  @param rot         rotation in degrees, real
//  @param color       color blending, real
//  @param alpha       alpha blending, real
//
//  Notes: Resets blending mode to normal. This may not work quite as 
//  desired when used with surfaces and an alpha of less than one.
//
/// GMLscripts.com/license
function draw_sprite_inverted_ext(sprite,subimage,x,y,xscale,yscale,rot,color,alpha) {
    var w = sprite_get_width(sprite);
    var h = sprite_get_height(sprite);
    var xo = sprite_get_xoffset(sprite);
    var yo = sprite_get_yoffset(sprite);
    var a = draw_get_alpha();
    draw_set_alpha(0);
    d3d_transform_stack_push();
    d3d_transform_add_translation(-xo,-yo,0);
    d3d_transform_add_scaling(xscale,yscale,1);
    d3d_transform_add_rotation_z(rot);
    d3d_transform_add_translation(x,y,0);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_alpha);
    draw_sprite_ext(sprite,subimage,xo,yo,1,1,0,color,alpha);
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0,0,w,h,c_white,c_white,c_white,c_white,false);
    d3d_transform_stack_pop();
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(a);
    return 0;
}