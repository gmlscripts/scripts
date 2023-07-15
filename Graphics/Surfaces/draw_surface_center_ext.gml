/// @func   draw_surface_center_ext(surface, cx, cy, xscale, yscale, rot, color, alpha)
///
/// @desc   Draws surface centered at given point with scaling, rotation, and blending.
///
/// @param  {surface}   surface     surface to draw
/// @param  {real}      cx          x-position for surface center
/// @param  {real}      cy          y-position for surface center
/// @param  {real}      xscale      x-scaling factor
/// @param  {real}      yscale      y-scaling factor
/// @param  {real}      rot         rotation in degrees
/// @param  {color}     color       blending color
/// @param  {real}      alpha       alpha blend factor
///
/// GMLscripts.com/license

function draw_surface_center_ext(surface, cx, cy, xscale, yscale, rot, color, alpha)
{
    var mx = surface_get_width(surface) / 2;
    var my = surface_get_height(surface) / 2;
    var mat = matrix_get(matrix_world);
    matrix_stack_push(matrix_build(cx, cy, 0, 0, 0, rot, 1, 1, 1));
    matrix_stack_push(matrix_build(0, 0, 0, 0, 0, 0, xscale, yscale, 1));
    matrix_set(matrix_world, matrix_stack_top());
    draw_surface_ext(surface, -mx, -my, 1, 1, 0, color, alpha);
    matrix_stack_pop();
    matrix_stack_pop();
    matrix_set(matrix_world, mat);
}
