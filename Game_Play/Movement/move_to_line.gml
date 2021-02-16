#define move_to_line
/// move_to_line(x1,y1,x2,y2,segment)
//  GM:S v2.3+ compatible
//
//  Moves the calling instance to the nearest 
//  point on a given line or line segment.
//
//      x1,y1       first end point of line, real
//      x2,y2       second end point of line, real
//  @param segment     true to limit positioning to the line segment, bool
//
/// GMLscripts.com/license
function move_to_line(x1,y1,x2,y2,segment) {
    var dx,dy,t;
    dx = x2 - x1;
    dy = y2 - y1;
    if ((dx == 0) && (dy == 0)) {
        x = x1;
        y = y1;
    }else{
        t = ((x - x1) * dx + (y - y1) * dy) / (dx * dx + dy * dy);
        if (segment) t = min(max(0,t),1);
        x = x1 + t * dx;
        y = y1 + t * dy;
    }
    return 0;
}