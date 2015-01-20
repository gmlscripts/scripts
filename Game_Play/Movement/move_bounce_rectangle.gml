#define move_bounce_rectangle
/// move_bounce_rectangle(x1,y1,x2,y2)
//
//  Makes the calling instance reverse direction if it is colliding with
//  the boundary of a given rectangle. Meant to keep an instance inside an
//  area. Swap the corners to bounce against the outside of a rectangle.
//
//      x1,y1       upper left corner of bounding rectangle, real
//      x2,y2       lower right corner of bounding rectangle, real
//
/// GMLscripts.com/license
{
    if (bbox_top < argument1)     { y = yprevious; vspeed *= -1; }
    if (bbox_left < argument0)    { x = xprevious; hspeed *= -1; }
    if (bbox_right >= argument2)  { x = xprevious; hspeed *= -1; }
    if (bbox_bottom >= argument3) { y = yprevious; vspeed *= -1; }
    return 0;
}
