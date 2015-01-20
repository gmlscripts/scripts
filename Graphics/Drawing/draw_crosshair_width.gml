#define draw_crosshair_width
/// draw_crosshair_width(x,y)
//
//  Draws a pair of horizontal and vertical lines of a given 
//  width, spanning the room and intersecting a given point.
//
//      x,y         position, real
//      width       width of lines in pixels, real
//
/// GMLscripts.com/license
{
    draw_line_width(0,argument1,room_width,argument1,argument2);
    draw_line_width(argument0,0,argument0,room_height,argument2);   
    return 0;
}