#define draw_surface_center
/// surface_create_clear(width,height,color,alpha)
//  GM:S v2.3+ compatible
//
//  Creates a surface of a given size, cleared to a given color and alpha.
//
//  @param width       surface width, real
//  @param height      surface height, real
//  @param color       surface color, real
//  @param alpha       surface alpha, real
//
/// GMLscripts.com/license
function surface_create_clear(width,height,color,alpha) {
    var surf = surface_create(height);
    if (surface_exists(surf))
    {
        surface_set_target(surf);
        draw_clear_alpha(color,alpha);
        surface_reset_target();
    }
    return surf;
}