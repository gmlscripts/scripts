#define draw_sprite_stretched_direction
/// draw_sprite_stretched_direction(sprite,subimg,x,y,scale,dir)
//  GM:S v2.3+ compatible
//
//  Draws a sprite scaled along an arbitrary axis.
//
//  @param sprite      sprite, real
//  @param subimg      subimage, real
//      x,y         position, real
//  @param scale       scaling factor, real
//  @param dir         direction to stretch, real
//
/// GMLscripts.com/license
function draw_sprite_stretched_direction(sprite,subimg,x,y,scale,dir) {
    d3d_transform_stack_push();
    d3d_transform_add_rotation_z(-dir);
    d3d_transform_add_scaling(scale,1,1);
    d3d_transform_add_rotation_z(dir);
    d3d_transform_add_translation(x,y,0);
    draw_sprite(sprite,subimg,0,0);
    d3d_transform_stack_pop();
    return 0;
}