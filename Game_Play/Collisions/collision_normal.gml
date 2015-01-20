#define collision_normal
/// collision_normal(x1,y1,obj [,rad [,res]])
//
//  Returns a 2D "surface normal" (in degrees) at a given point 
//  on or near an instance detected within a circular test area.
//  Makes approximately pi*(rad*rad)/(res*res) collision calls.
//
//      x1,y1       point on the surface, real
//      obj         object or instance (or all), real
//      rad         radius of test area (default 4), real
//      res         resolution of test (default 1), real
//
/// GMLscripts.com/license
{
    var xx,yy,obj,rad,nx,ny,i,j;
    xx  = argument0;
    yy  = argument1;
    obj = argument2;
    rad = argument3;
    res = argument4;
    if (rad <= 0) rad = 4;
    if (res <= 0) res = 1;
    nx = 0;
    ny = 0;
    if (collision_circle(xx,yy,rad,obj,true,true)) {
        for (j=res; j<=rad; j+=res) {
            for (i=0; i<rad; i+=res) {
                if (point_distance(0,0,i,j) <= rad) {
                    if (!collision_point(xx+i,yy+j,obj,true,true)) { nx += i; ny += j; }
                    if (!collision_point(xx+j,yy-i,obj,true,true)) { nx += j; ny -= i; }
                    if (!collision_point(xx-i,yy-j,obj,true,true)) { nx -= i; ny -= j; }
                    if (!collision_point(xx-j,yy+i,obj,true,true)) { nx -= j; ny += i; }
                }
            }
        }
        if (nx == 0 && ny == 0) return (-1);
        return point_direction(0,0,nx,ny);
    }else{
        return (-1);
    }
}