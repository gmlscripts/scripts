#define draw_crosshair_ext
/// draw_crosshair_ext(x,y,col1,col2,col3,col4)
//  GM:S v2.3+ compatible
//
//  Draws a pair of horizontal and vertical lines,
//  spanning the room and intersecting a given point.
//
//      x,y         position, real
//  @param col1        color of horizontal start point, real
//  @param col2        color of horizontal end point, real
//  @param col3        color of vertical start point, real
//  @param col4        color of vertical end point, real
//
/// GMLscripts.com/license
function draw_crosshair_ext(x,y,col1,col2,col3,col4) {
    draw_line_color(0,y,room_width,y,col1,col2);
    draw_line_color(x,0,x,room_height,col3,col4);
    return 0;
}