#define draw_crosshair_width_ext
/// draw_crosshair_width_ext(x,y,width,col1,col2,col3,col4)
//
//  Draws a pair of horizontal and vertical lines,
//  spanning the room and intersecting a given point.
//
//      x,y         position, real
//      width       width of lines in pixels, real
//      col1        color of horizontal start point, real
//      col2        color of horizontal end point, real
//      col3        color of vertical start point, real
//      col4        color of vertical end point, real
//
/// GMLscripts.com/license
{
    draw_line_width_color(0,argument1,room_width,argument1,argument2,argument3,argument4);
    draw_line_width_color(argument0,0,argument0,room_height,argument2,argument5,argument6);
    return 0;
}