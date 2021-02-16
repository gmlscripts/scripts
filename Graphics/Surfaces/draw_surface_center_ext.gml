#define draw_surface_center_ext
/// draw_surface_center_ext(id,x,y,xscale,yscale,rot,color,alpha)
//  GM:S v2.3+ compatible
//
//  Draws a surface centered at a given point with rotation,
//  scaling, and color and alpha blending.
//
//  @param id          surface id, real
//      x,y         position of center of surface, real
//  @param xscale      horizontal scaling, real
//  @param yscale      vertical scaling, real
//  @param rot         rotation in degrees, real
//  @param color       color blending, real
//  @param alpha       alpha blending, real
//
///  GMLscripts.com/license
function draw_surface_center_ext(id,x,y,xscale,yscale,rot,color,alpha) {
    var surface,ssmm;
    surface = id;
    sx = x;
    sy = y;
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