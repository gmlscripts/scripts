#define draw_roundrect_ext
/// draw_roundrect_ext(x1,y1,x2,y2,outline,radius,precision)
//  GM:S v2.3+ compatible
//
//  Draws a rectangle with rounded corners.
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//  @param outline     true for outline, bool
//  @param radius      radius of corners, real
//  @param precision   quality of corners (positive integer), real
//
/// GMLscripts.com/license
function draw_roundrect_ext(x1,y1,x2,y2,outline,radius,precision) {
    var out,rad,pre,i,j,x1r,x2r,y1r,y2r;
    x1  = x1;
    y1  = y1;
    x2  = x2;
    y2  = y2;
    out = outline;
    rad = min(radius,abs(x1-x2)/2,abs(y1-y2)/2);
    pre = max(1,precision);
    
    i   = 0;
    j   = 90 / pre;
    x1r = x1 + rad;
    x2r = x2 - rad;
    y1r = y1 + rad;
    y2r = y2 - rad;
    
    if (out) {
        draw_primitive_begin(pr_linestrip);
    }else{
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(mean(x1,x2),mean(y1,y2)); 
    }
    draw_vertex(x2,y2r);
    draw_vertex(x2,y1r);
    repeat (pre) {
        i += j;
        draw_vertex(x2r+lengthdir_x(rad,i),y1r+lengthdir_y(rad,i));
    }
    draw_vertex(x1r,y1);
    repeat (pre) {
        i += j;
        draw_vertex(x1r+lengthdir_x(rad,i),y1r+lengthdir_y(rad,i));
    }
    draw_vertex(x1,y2r);
    repeat (pre) {
        i += j;
        draw_vertex(x1r+lengthdir_x(rad,i),y2r+lengthdir_y(rad,i));
    }
    draw_vertex(x2r,y2);
    repeat (pre) {
        i += j;
        draw_vertex(x2r+lengthdir_x(rad,i),y2r+lengthdir_y(rad,i));
    }
    draw_vertex(x2,y2r);
    draw_primitive_end();
    return 0;
}