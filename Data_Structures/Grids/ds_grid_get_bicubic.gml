#define ds_grid_get_bicubic
/// ds_grid_get_bicubic(id,x,y)
//
//  Returns the bicubic interpolation of the sixteen grid
//  cells surrounding the given fractional coordinate.
//  Depends on spline4().
//
//      id          grid data structure, real
//      x,y         coordinate pair, real
//
/// GMLscripts.com/license
{
    var ix,iy,fx,fy;
    ix = floor(argument1);
    iy = floor(argument2);
    fx = argument1 - ix;
    fy = argument2 - iy;
    
    return spline4(fx,
        spline4(fy,
            ds_grid_get(argument0,ix-1,iy-1),
            ds_grid_get(argument0,ix-1,iy  ),
            ds_grid_get(argument0,ix-1,iy+1),
            ds_grid_get(argument0,ix-1,iy+2)),
        spline4(fy,
            ds_grid_get(argument0,ix  ,iy-1),
            ds_grid_get(argument0,ix  ,iy  ),
            ds_grid_get(argument0,ix  ,iy+1),
            ds_grid_get(argument0,ix  ,iy+2)),
        spline4(fy,
            ds_grid_get(argument0,ix+1,iy-1),
            ds_grid_get(argument0,ix+1,iy  ),
            ds_grid_get(argument0,ix+1,iy+1),
            ds_grid_get(argument0,ix+1,iy+2)),
        spline4(fy,
            ds_grid_get(argument0,ix+2,iy-1),
            ds_grid_get(argument0,ix+2,iy  ),
            ds_grid_get(argument0,ix+2,iy+1),
            ds_grid_get(argument0,ix+2,iy+2)));
}