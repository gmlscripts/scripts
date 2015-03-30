#define draw_sprite_shear
/// draw_sprite_shear(sprite,subimg,x,y,xshear,yshear)
//
//  Draws a given sprite sheared by a given amount.
//
//      sprite      sprite index, integer
//      subimg      image index, integer
//      x,y         screen position, real
//      xshear      shear rate of x-axis, real
//      yshear      shear rate of y-axis, real
//
/// GMLscripts.com/license
{
    var spr = argument0;
    var sub = argument1;
    var xps = argument2;
    var yps = argument3;
    var xsh = argument4;
    var ysh = argument5;
    
    var M;
    M[15] = 1;  M[14] = 0;  M[13] = 0;    M[12] = 0;
    M[11] = 0;  M[10] = 1;  M[9]  = 0;    M[8]  = 0;
    M[7]  = 0;  M[6]  = 0;  M[5]  = 1;    M[4]  = xsh;
    M[3]  = 0;  M[2]  = 0;  M[1]  = ysh;  M[0]  = 1;

    d3d_transform_stack_push();
    matrix_set(matrix_world, M);
    d3d_transform_add_translation(xps, yps, 0);
    draw_sprite(spr, sub, 0, 0);
    d3d_transform_stack_pop();
    return 0;
}
