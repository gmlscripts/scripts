/// @func   surface_create_clear(width, height, color, alpha)
///
/// @desc   Creates surface cleared with given color and alpha values.
///
/// @param  {real}      width       surface width in pixels
/// @param  {real}      height      surface height in pixels
/// @param  {color}     color       initial color
/// @param  {real}      alpha       initial alpha
///
/// @return {surface}   newly created surface
///
/// GMLscripts.com/license

function surface_create_clear(width, height, color, alpha)
{
    var surf = surface_create(width, height);
    if (surface_exists(surf)) {
        surface_set_target(surf);
        draw_clear_alpha(color, alpha);
        surface_reset_target();
    }
    return surf;
}
