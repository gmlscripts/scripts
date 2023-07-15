/// @func   draw_surface_center_rotate(surface, cx, cy, rot)
///
/// @desc   Draws surface centered at given point with rotation.
///
/// @param  {surface}   surface     surface to draw
/// @param  {real}      cx          x-position for surface center
/// @param  {real}      cy          y-position for surface center
/// @param  {real}      rot         rotation in degrees
///
/// GMLscripts.com/license

function draw_surface_center_rotate(surface, cx, cy, rot)
{
    var mx = surface_get_width(surface) / 2;
    var my = surface_get_height(surface) / 2;
    var mat = matrix_get(matrix_world);
    matrix_stack_push(matrix_build(cx, cy, 0, 0, 0, rot, 1, 1, 1));
    matrix_set(matrix_world, matrix_stack_top());
    draw_surface(surface, -mx, -my);
    matrix_stack_pop();
    matrix_set(matrix_world, mat);
}
