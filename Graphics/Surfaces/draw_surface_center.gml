#define draw_surface_center
/// draw_surface_center(id,x,y)
//  GM:S v2.3+ compatible
//
//  Draws a surface centered at a given point.
//
//  @param id          surface id, real
//      x,y         position of center of surface, real
//
/// GMLscripts.com/license
function draw_surface_center(id,x,y) {
    var surface,ssmm;
    surface = id;
    sx = x;
    sy = y;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    draw_surface(surface,sx-mx,sy-my);
    return 0;
}