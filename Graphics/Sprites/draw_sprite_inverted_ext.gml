/// @func   draw_sprite_inverted_ext(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
///
/// @desc   Draws a sprite with inverted colors and standard transformations
///         and blending. This accepts the same arguments as draw_sprite_ext().
///
/// @param  {sprite}    sprite      sprite index
/// @param  {real}      subimg      image index
/// @param  {real}      x           x screen position
/// @param  {real}      y           y screen position
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_inverted_ext(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
{
    var w = sprite_get_width(sprite);
    var h = sprite_get_height(sprite);
    var xo = sprite_get_xoffset(sprite);
    var yo = sprite_get_yoffset(sprite);
    var a = draw_get_alpha();
    var b = gpu_get_blendmode_ext();

    matrix_stack_push(matrix_build(x, y, 0, 0, 0, rot, 1, 1, 1));
    matrix_stack_push(matrix_build(0, 0, 0, 0, 0, 0, xscale, yscale, 1));
    matrix_stack_push(matrix_build(-xo, -yo, 0, 0, 0, 0, 1, 1, 1));
    matrix_set(matrix_world, matrix_stack_top());

    draw_set_alpha(0);
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0, 0, w, h, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha);
    draw_sprite_ext(sprite, subimg, xo, yo, 1, 1, 0, color, alpha);
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0, 0, w, h, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode_ext(b);
    draw_set_alpha(a);

    matrix_stack_pop();
    matrix_stack_pop();
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());

    return 0;
}