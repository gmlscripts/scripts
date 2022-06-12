/// @func   draw_rectangle_inverted(x1, y1, x2, y2)
///
/// @desc   Draws a rectangle which inverts the colors beneath it.
///
/// @param  {real}      x1          x-coordinate of 1st rectangle corner
/// @param  {real}      y1          y-coordinate of 1st rectangle corner
/// @param  {real}      x2          x-coordinate of 2nd rectangle corner
/// @param  {real}      y2          y-coordinate of 2nd rectangle corner
///
/// GMLscripts.com/license

function draw_rectangle_inverted(x1, y1, x2, y2)
{
    var src = gpu_get_blendmode_src();
    var dst = gpu_get_blendmode_dest();
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(x1, y1, x2, y2, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode_ext(src, dst);
}
