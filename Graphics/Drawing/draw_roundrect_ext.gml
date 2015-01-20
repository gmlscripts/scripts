#define draw_roundrect_ext
/// draw_roundrect_ext(x1,y1,x2,y2,outline,radius,precision)
//
//  Draws a rectangle with rounded corners.
//
//      x1,y1       1st corner of the rectangle, real
//      x2,y2       2nd corner of the rectangle, real
//      outline     true for outline, bool
//      radius      radius of corners, real
//      precision   quality of corners (positive integer), real
//
/// GMLscripts.com/license
{
    var x1,y1,x2,y2,out,rad,pre,i,j,x1r,x2r,y1r,y2r;
    x1  = argument0;
    y1  = argument1;
    x2  = argument2;
    y2  = argument3;
    out = argument4;
    rad = min(argument5,abs(x1-x2)/2,abs(y1-y2)/2);
    pre = max(1,argument6);

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