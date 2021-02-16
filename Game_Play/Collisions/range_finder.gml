#define range_finder
/// range_finder(x,y,dir,range,object,prec,notme)
//  GM:S v2.3+ compatible
//
//  Returns the exact distance to the nearest instance of an object in a
//  given direction from a given point, or noone if no instance is found.
//  The solution is found in log2(range) collision checks.
//
//      x,y         position in room, real
//  @param dir         direction to look in degrees, real
//  @param range       the greatest distance to look in pixels, real
//  @param object      which objects to look for (or all), real
//  @param prec        true to use precise collision checking, bool
//  @param notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
function range_finder(x,y,dir,range,object,prec,notme) {
    var ooddssdistance;
    ox = x;
    oy = y;
    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
        distance = -1;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        distance = point_distance(ox,oy,dx,dy);
    }
    return distance;
}