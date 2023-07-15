/// @func   draw_surface_center(surface, cx, cy)
///
/// @desc   Draws surface centered at given point.
///
/// @param  {surface}   surface     surface to draw
/// @param  {real}      cx          x-position for surface center
/// @param  {real}      cy          y-position for surface center
///
/// GMLscripts.com/license

function draw_surface_center(surface, cx, cy)
{
    cx -= surface_get_width(surface) / 2;
    cy -= surface_get_height(surface) / 2;
    draw_surface(surface, cx, cy);
}
