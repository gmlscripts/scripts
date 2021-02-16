#define draw_sprite_halfpixel
/// draw_sprite_halfpixel(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
//  GM:S v2.3+ compatible
//
//  Draws a sprite transformed about the center of its origin pixel 
//  instead of the top-left corner. This can be useful when you require
//  a sprite to maintain the on-screen position of its origin pixel as it
//  is scaled and rotated. Otherwise works the same as draw_sprite_ext().
//
//  @param sprite      sprite index, real
//  @param subimg      sprite subimage, real
//      x,y         position, real
//  @param xscale      horizontal scaling, real
//  @param yscale      vertical scaling, real
//  @param rot         rotation in degrees, real
//  @param blend       color blending, real
//  @param alpha       alpha blending, real
//
/// GMLscripts.com/license
function draw_sprite_halfpixel(sprite, subimg, x, y, xscale, yscale, rot, color, alpha) {
    d3d_transform_stack_push();
    d3d_transform_add_translation(-0.5, -0.5, 0);
    d3d_transform_add_rotation_z(rot);
    d3d_transform_add_scaling(xscale, yscale, 1);
    d3d_transform_add_translation(x+0.5, y+0.5, 0);
    draw_sprite_ext(sprite, subimg, 0, 0, 1, 1, 0, color, alpha);
    d3d_transform_stack_pop();
    return 0;
}