/// @func   draw_rectangle_dashed_color(x1, y1, x2, y2, col1, col2, col3, col4, size, center)
///
/// @desc   Draws a rectangle made of dashes of a given size.
///         The coordinates of the rectangle are given by two
///         opposite corners (eg. top-left and bottom-right).
///         Colors are specified for each of the four corners.
///         If no size is given, single pixel dots are used.
///         Dash texture position can be locked to the center
///         of the rectangle (default) or the top-left corner.
///
/// @param  {real}      x1          x-coordiante of 1st rectangle corner
/// @param  {real}      y1          y-coordiante of 1st rectangle corner
/// @param  {real}      x2          x-coordiante of 2nd rectangle corner
/// @param  {real}      y2          y-coordiante of 2nd rectangle corner
/// @param  {color}     col1        color of top-left corner
/// @param  {color}     col2        color of top-right corner
/// @param  {color}     col3        color of bottom-right corner
/// @param  {color}     col4        color of bottom-left corner
/// @param  {real}      size        length of the dashes in pixels (default 1)
/// @param  {bool}      center      lock texture to center (default true)
///
/// GMLscripts.com/license

function draw_rectangle_dashed_color(x1, y1, x2, y2, col1, col2, col3, col4, size=1, center=true)
{
    // create dash texture as needed, generally
    // only once unless it is freed by the OS
    static surf = -1;
    if (!surface_exists(surf)) {
        surf = surface_create(2, 2);
        if (!surface_exists(surf)) return 0;
        var alpha = draw_get_alpha();
        draw_set_alpha(1.0);
        surface_set_target(surf);
        draw_clear_alpha(c_white, 0.0);
        draw_point_color(0, 0, c_white);
        draw_point_color(1, 1, c_white);
        surface_reset_target();
        draw_set_alpha(alpha);
    }

    // swap coordinates if necessary
    if (x2 < x1) { var t = x1; x1 = x2; x2 = t; }
    if (y2 < y1) { var t = y1; y1 = y2; y2 = t; }

    // scale texture UV coordinates
    var u1 = 0;
    var v1 = 0;
    var u2 = (x2 - x1) / (2 * size);
    var v2 = (y2 - y1) / (2 * size);

    //  optionally center texture UV coordinates
    if (center) {
        u1 = 0.25 - (u2 % 2) / 2;
        v1 = 0.25 - (v2 % 2) / 2;
        u2 += u1;
        v2 += v1;
    }

    // draw textured rectangle using the given colors and global alpha
    var alpha = draw_get_alpha();
    var rept = gpu_get_tex_repeat();
    var filt = gpu_get_texfilter();
    gpu_set_tex_repeat(true);
    gpu_set_texfilter(false);
    draw_primitive_begin_texture(pr_linestrip, surface_get_texture(surf));
    draw_vertex_texture_color(x1, y1, u1, v1, col1, alpha);
    draw_vertex_texture_color(x2, y1, u2, v1, col2, alpha);
    draw_vertex_texture_color(x2, y2, u2, v2, col3, alpha);
    draw_vertex_texture_color(x1, y2, u1, v2, col4, alpha);
    draw_vertex_texture_color(x1, y1, u1, v1, col1, alpha);
    draw_primitive_end();
    gpu_set_tex_repeat(rept);
    gpu_set_texfilter(filt);
}
