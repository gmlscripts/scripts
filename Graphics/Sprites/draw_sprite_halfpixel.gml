#define draw_sprite_halfpixel
/// draw_sprite_halfpixel(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
//
//  Draws a sprite transformed about the center of its origin pixel 
//  instead of the top-left corner. This can be useful when you require
//  a sprite to maintain the on-screen position of its origin pixel as it
//  is scaled and rotated. Otherwise works the same as draw_sprite_ext().
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position, real
//      xscale      horizontal scaling, real
//      yscale      vertical scaling, real
//      rot         rotation in degrees, real
//      blend       color blending, real
//      alpha       alpha blending, real
//
/// GMLscripts.com/license
{
    d3d_transform_stack_push();
    d3d_transform_add_translation(-0.5, -0.5, 0);
    d3d_transform_add_rotation_z(argument6);
    d3d_transform_add_scaling(argument4, argument5, 1);
    d3d_transform_add_translation(argument2+0.5, argument3+0.5, 0);
    draw_sprite_ext(argument0, argument1, 0, 0, 1, 1, 0, argument7, argument8);
    d3d_transform_stack_pop();
    return 0;
}