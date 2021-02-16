#define draw_pie
/// draw_pie(x1,y1,x2,y2,x3,y3,x4,y4,outline,precision)
//  GM:S v2.3+ compatible
//
//  Draws a sector of an elliptical disc, mimicking draw_pie() from GM5.
//  It also mimics draw_ellipse() from GM6 in that it will draw either as a
//  solid or an outline, and it uses a primitive drawn at a limited resolution.
//  The pie is a closed figure of an arc with two lines between the center
//  and the starting and ending points. The arc is drawn following the perimeter
//  of the ellipse, counterclockwise, from the starting point to the ending
//  point. The starting point is the intersection of the ellipse and the line
//  from the center to (x3,y3). Then ending point is the intersection of the 
//  ellipse and the line form the center to (x4,y4).
//
//      x1,y1       1st corner of bounding rectangle, real
//      x2,y2       2nd corner of bounding rectangle, real
//      x3,y3       determines the start angle, real
//      x4,y4       determines the end angle, real
//  @param outline     true to draw as an outline, bool
//  @param precision   number of segments a full ellipse would be drawn with,
//                  [4..64] divisible by 4, default 24, real (optional)
//
/// GMLscripts.com/license
function draw_pie(x1,y1,x2,y2,x3,y3,x4,y4,outline,precision) {
    
    if (precision == 0) precision = 24;
    var res,xm,ym,xr,yr,r,a1,a2,sx,sy,a;
    res = 360 / min(max(4,4*(precision div 4)),64);
    xm = (x1+x2)/2;
    ym = (y1+y2)/2;
    xr = abs(x2-x1)/2;
    yr = abs(y2-y1)/2;
    if (xr > 0) r = yr/xr;
    else r = 0;
    a1 = point_direction(0,0,(x3-xm)*r,y3-ym);
    a2 = point_direction(0,0,(x4-xm)*r,y4-ym);
    if (a2<a1) a2 += 360;
    if (outline) draw_primitive_begin(pr_linestrip);
    else draw_primitive_begin(pr_trianglefan);
    draw_vertex(xm,ym);
    sx = xm+lengthdir_x(xr,a1);
    sy = ym+lengthdir_y(yr,a1);
    draw_vertex(sx,sy);
    for (a=res*(a1 div res + 1); a<a2; a+=res) {
        sx = xm+lengthdir_x(xr,a);
        sy = ym+lengthdir_y(yr,a);
        draw_vertex(sx,sy);
    }
    sx = xm+lengthdir_x(xr,a2);
    sy = ym+lengthdir_y(yr,a2);
    draw_vertex(sx,sy);
    if (outline) draw_vertex(xm,ym);
    draw_primitive_end();
    return 0;
}