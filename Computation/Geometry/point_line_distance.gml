#define point_line_distance
/// point_line_distance(px,py,x1,y1,x2,y2,segment)
//
//  Returns the distance from the given point to the given line.
//
//      px,py       point to measuring from
//      x1,y1       1st end point of line
//      x2,y2       2nd end point of line
//      segment     set to true to limit to the line segment
//
/// GMLscripts.com/license
{
    var dx, dy, t, segment;
    dx = argument4-argument2;
    dy = argument5-argument3;
    if ((dx == 0) && (dy == 0)) 
    {
        x0 = argument2;
        y0 = argument3;
    }
    else
    {
        t = (dx*(argument0-argument2) + dy*(argument1-argument3)) / (dx*dx+dy*dy);
        if (argument6) t = median(0, t, 1);
        x0 = argument2 + t * dx;
        y0 = argument3 + t * dy;
    }
    return point_distance(x0, y0, argument0, argument1);
}
