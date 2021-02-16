#define move_bounce_rectangle
/// move_bounce_rectangle(x1,y1,x2,y2)
//  GM:S v2.3+ compatible
//
//  Makes the calling instance reverse direction if it is colliding with
//  the boundary of a given rectangle. Meant to keep an instance inside an
//  area. Swap the corners to bounce against the outside of a rectangle.
//
//      x1,y1       upper left corner of bounding rectangle, real
//      x2,y2       lower right corner of bounding rectangle, real
//
/// GMLscripts.com/license
function move_bounce_rectangle(x1,y1,x2,y2) {
    if (bbox_top < y1)     { y = yprevious; vspeed *= -1; }
    if (bbox_left < x1)    { x = xprevious; hspeed *= -1; }
    if (bbox_right >= x2)  { x = xprevious; hspeed *= -1; }
    if (bbox_bottom >= y2) { y = yprevious; vspeed *= -1; }
    return 0;
}