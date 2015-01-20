#define draw_surface_center
/// draw_surface_center(id,x,y)
//
//  Draws a surface centered at a given point.
//
//      id          surface id, real
//      x,y         position of center of surface, real
//
/// GMLscripts.com/license
{
    var surface,sx,sy,mx,my;
    surface = argument0;
    sx = argument1;
    sy = argument2;
    mx = surface_get_width(surface)/2;
    my = surface_get_height(surface)/2;
    draw_surface(surface,sx-mx,sy-my);
    return 0;
}