#define draw_surface_center_rotate
/// draw_surface_center_rotate(id,x,y,rot)
//  GM:S v2.3+ compatible
//
//  Draws a surface centered at a given point and rotated.
//
//  @param id          surface id, real
//      x,y         position of center of surface, real
//  @param rot         rotation in degrees, real
//
///  GMLscripts.com/license
function draw_surface_center_rotate(id,x,y,rot) {
    var surface,ssangle,mm;
    surface = id;
    sx = x;
    sy = y;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    d3d_transform_stack_push();
    d3d_transform_set_identity();
    d3d_transform_add_translation(-mx,-my,0);
    d3d_transform_add_rotation_z(rot);
    d3d_transform_add_translation(sx,sy,0);
    draw_surface(surface,0,0);
    d3d_transform_stack_pop();
    return 0;
}