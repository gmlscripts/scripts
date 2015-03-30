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

    d3d_transform_stack_push();
    d3d_transform_set_identity();
    var dis = point_distance(0, 0, xsh, ysh);
    if (dis > 0.000001)
    {
        // Do x-axis shear
        var ang = point_direction(0, 0, xsh, ysh);
        d3d_transform_add_rotation_y(ang);
        d3d_transform_add_scaling(1 / sqrt(3), dis / 2, 1);
        d3d_transform_add_rotation_z(60);
        d3d_transform_add_scaling(3, -1, 1);
        d3d_transform_add_rotation_z(30);
        d3d_transform_add_scaling(1, -2 / sqrt(3) / dis, 1);
        d3d_transform_add_rotation_y(-ang);

        // Do y-axis shear
        ang = point_direction(0, 0, ysh, xsh);
        d3d_transform_add_rotation_x(ang);
        d3d_transform_add_scaling(-dis / 2, 1 / sqrt(3), 1);
        d3d_transform_add_rotation_z(60);
        d3d_transform_add_scaling(-1, 3, 1);
        d3d_transform_add_rotation_z(30);
        d3d_transform_add_scaling(2 / sqrt(3) / dis, 1, 1);
        d3d_transform_add_rotation_x(-ang);
    }
    d3d_transform_add_translation(xps, yps, 0);
    draw_sprite(spr, sub, 0, 0);
    d3d_transform_stack_pop();
    return 0;
}