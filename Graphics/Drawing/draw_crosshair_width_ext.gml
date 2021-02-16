#define draw_crosshair_width_ext
/// draw_crosshair_width_ext(x,y,width,col1,col2,col3,col4)
//  GM:S v2.3+ compatible
//
//  Draws a pair of horizontal and vertical lines,
//  spanning the room and intersecting a given point.
//
//      x,y         position, real
//  @param width       width of lines in pixels, real
//  @param col1        color of horizontal start point, real
//  @param col2        color of horizontal end point, real
//  @param col3        color of vertical start point, real
//  @param col4        color of vertical end point, real
//
/// GMLscripts.com/license
function draw_crosshair_width_ext(x,y,width,col1,col2,col3,col4) {
    draw_line_width_color(0,y,room_width,y,width,col1,col2);
    draw_line_width_color(x,0,x,room_height,width,col3,col4);
    return 0;
}