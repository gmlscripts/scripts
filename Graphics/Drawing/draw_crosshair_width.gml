#define draw_crosshair_width
/// draw_crosshair_width(x,y)
//  GM:S v2.3+ compatible
//
//  Draws a pair of horizontal and vertical lines of a given 
//  width, spanning the room and intersecting a given point.
//
//      x,y         position, real
//  @param width       width of lines in pixels, real
//
/// GMLscripts.com/license
function draw_crosshair_width(x,y) {
    draw_line_width(0,y,room_width,y,argument2);
    draw_line_width(x,0,x,room_height,argument2);   
    return 0;
}