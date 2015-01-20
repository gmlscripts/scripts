#define draw_surface_center
/// surface_create_clear(width,height,color,alpha)
//
//  Creates a surface of a given size, cleared to a given color and alpha.
//
//      width       surface width, real
//      height      surface height, real
//      color       surface color, real
//      alpha       surface alpha, real
//
/// GMLscripts.com/license
{
    var surf = surface_create(argument0,argument1);
    if (surface_exists(surf))
    {
        surface_set_target(surf);
        draw_clear_alpha(argument2,argument3);
        surface_reset_target();
    }
    return surf;
}