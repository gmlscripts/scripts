#define draw_crosshair
/// draw_crosshair(x,y)
//  GM:S v2.3+ compatible
//
//  Draws a pair of horizontal and vertical lines,
//  spanning the room and intersecting a given point.
//
//      x,y         position, real
//
/// GMLscripts.com/license
function draw_crosshair(x,y) {
    draw_line(0,y,room_width,y);
    draw_line(x,0,x,room_height);
    return 0;
}