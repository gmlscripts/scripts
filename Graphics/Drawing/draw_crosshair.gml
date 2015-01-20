#define draw_crosshair
/// draw_crosshair(x,y)
//
//  Draws a pair of horizontal and vertical lines,
//  spanning the room and intersecting a given point.
//
//      x,y         position, real
//
/// GMLscripts.com/license
{
    draw_line(0,argument1,room_width,argument1);
    draw_line(argument0,0,argument0,room_height);
    return 0;
}