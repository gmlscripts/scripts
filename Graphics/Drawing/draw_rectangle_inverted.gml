#define draw_rectangle_inverted
/// draw_rectangle_inverted(x1,y1,x2,y2)
//  GM:S v2.3+ compatible
//
//  Draws a rectangle which inverts the colors beneath it.
//  Resets the blending mode to normal.
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//
/// GMLscripts.com/license
function draw_rectangle_inverted(x1,y1,x2,y2) {
    draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
    draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,0);
    draw_set_blend_mode(bm_normal);
    return 0;
}