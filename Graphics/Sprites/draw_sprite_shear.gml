#define draw_sprite_shear
/// draw_sprite_shear(sprite,subimg,x,y,xshear,yshear)
//  GM:S v2.3+ compatible
//
//  Draws a given sprite sheared by a given amount.
//
//  @param sprite      sprite index, integer
//  @param subimg      image index, integer
//      x,y         screen position, real
//  @param xshear      shear rate of x-axis, real
//  @param yshear      shear rate of y-axis, real
//
/// GMLscripts.com/license
function draw_sprite_shear(sprite,subimg,x,y,xshear,yshear) {
    var spr = ;
    var sub = subimg;
    var xps = x;
    var yps = y;
    var xsh = xshear;
    var ysh = yshear;
    
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