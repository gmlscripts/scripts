#define draw_surface_center_ext
/// draw_surface_center_ext(id,x,y,xscale,yscale,rot,color,alpha)
//
//  Draws a surface centered at a given point with rotation,
//  scaling, and color and alpha blending.
//
//      id          surface id, real
//      x,y         position of center of surface, real
//      xscale      horizontal scaling, real
//      yscale      vertical scaling, real
//      rot         rotation in degrees, real
//      color       color blending, real
//      alpha       alpha blending, real
//
///  GMLscripts.com/license
{
    var surface,sx,sy,xscale,yscale,rot,color,alpha,mx,my;
    surface = argument0;
    sx = argument1;
    sy = argument2;
    xscale = argument3;
    yscale = argument4;
    rot = argument5;
    color = argument6;
    alpha = argument7;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    d3d_transform_stack_push();
    d3d_transform_set_identity();
    d3d_transform_add_translation(-mx,-my,0);
    d3d_transform_add_scaling(xscale,yscale,0);
    d3d_transform_add_rotation_z(rot);
    d3d_transform_add_translation(sx,sy,0);
    draw_surface_ext(surface,0,0,1,1,0,color,alpha);
    d3d_transform_stack_pop();
    return 0;
}
