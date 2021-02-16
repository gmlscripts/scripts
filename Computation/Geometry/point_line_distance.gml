#define point_line_distance
/// point_line_distance(px,py,x1,y1,x2,y2,segment)
//  GM:S v2.3+ compatible
//
//  Returns the distance from the given point to the given line.
//
//      px,py       point to measuring from
//      x1,y1       1st end point of line
//      x2,y2       2nd end point of line
//  @param segment     set to true to limit to the line segment
//
/// GMLscripts.com/license
function point_line_distance(px,py,x1,y1,x2,y2,segment) {
    var dx, dy, t, ;
    dx = x2-x1;
    dy = y2-y1;
    if ((dx == 0) && (dy == 0)) 
    {
        x0 = x1;
        y0 = y1;
    }
    else
    {
        t = (dx*(px-x1) + dy*(py-y1)) / (dx*dx+dy*dy);
        if (segment) t = clamp(t, 0, 1);
        x0 = x1 + t * dx;
        y0 = y1 + t * dy;
    }
    return point_distance(x0, y0, px, py);
}