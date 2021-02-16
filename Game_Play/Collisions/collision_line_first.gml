#define collision_line_first
/// collision_line_first(x1,y1,x2,y2,object,prec,notme)
//  GM:S v2.3+ compatible
//
//  Returns the instance id of an object colliding with a given line and
//  closest to the first point, or noone if no instance found.
//  The solution is found in log2(range) collision checks.
//
//      x1,y2       first point on collision line, real
//      x2,y2       second point on collision line, real
//  @param object      which objects to look for (or all), real
//  @param prec        if true, use precise collision checking, bool
//  @param notme       if true, ignore the calling instance, bool
//
/// GMLscripts.com/license
function collision_line_first(x1,y1,x2,y2,object,prec,notme) {
    var ox,oy,dx,dy,sx,sy,inst,i;
    ox = x1;
    oy = y1;
    dx = x2;
    dy = y2;
    sx = dx - ox;
    sy = dy - oy;
    inst = collision_line(ox,oy,dx,dy,object,prec,notme);
    if (inst != noone) {
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            i = collision_line(ox,oy,dx,dy,object,prec,notme);
            if (i) {
                dx -= sx;
                dy -= sy;
                inst = i;
            }else{
                dx += sx;
                dy += sy;
            }
        }
    }
    return inst;
}