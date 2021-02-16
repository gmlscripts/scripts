#define draw_curve
/// draw_curve(x1,y1,x2,y2,direction,detail)
//  GM:S v2.3+ compatible
//
//  Draws a curve between two points with a given starting angle.
//
//      x1,y1       position of start of curve, real
//      x2,y2       position of end of curve, real
//  @param direction   start angle of the curve, real
//  @param detail      number of segments in the curve, real
//
/// GMLscripts.com/license
function draw_curve(x1,y1,x2,y2,direction,detail) {
    var start_angle,  dist, dist_ang, inc, draw_x, draw_y;
    x1 = argument[0];
    y1 = argument[1];
    x2 = argument[2];
    y2 = argument[3];
    start_angle = argument[4];
    detail = argument[5];
     
    dist = point_distance(x1,y1,x2,y2);
    dist_ang = angle_difference(point_direction(x1,y1,x2,y2),start_angle);
    inc = (1/detail);
    
    draw_primitive_begin(pr_linestrip);
    for (i=0; i<1+inc; i+=inc) {
        draw_x = x1 + (lengthdir_x(i * dist, i * dist_ang + start_angle));
        draw_y = y1 + (lengthdir_y(i * dist, i * dist_ang + start_angle));
        draw_vertex(draw_x,draw_y);
    }
    draw_primitive_end();
    return 0;
}