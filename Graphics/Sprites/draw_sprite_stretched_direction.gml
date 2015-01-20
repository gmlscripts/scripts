#define draw_sprite_stretched_direction
/// draw_sprite_stretched_direction(sprite,subimg,x,y,scale,dir)
//
//  Draws a sprite scaled along an arbitrary axis.
//
//      sprite      sprite, real
//      subimg      subimage, real
//      x,y         position, real
//      scale       scaling factor, real
//      dir         direction to stretch, real
//
/// GMLscripts.com/license
{
    d3d_transform_stack_push();
    d3d_transform_add_rotation_z(-argument5);
    d3d_transform_add_scaling(argument4,1,1);
    d3d_transform_add_rotation_z(argument5);
    d3d_transform_add_translation(argument2,argument3,0);
    draw_sprite(argument0,argument1,0,0);
    d3d_transform_stack_pop();
    return 0;
}