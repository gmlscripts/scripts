#define ds_grid_get_bicubic
/// ds_grid_get_bicubic(id,x,y)
//  GM:S v2.3+ compatible
//
//  Returns the bicubic interpolation of the sixteen grid
//  cells surrounding the given fractional coordinate.
//  Depends on spline4().
//
//  @param id          grid data structure, real
//      x,y         coordinate pair, real
//
/// GMLscripts.com/license
function ds_grid_get_bicubic(id,x,y) {
    var iiff;
    ix = floor(x);
    iy = floor(y);
    fx = x - ix;
    fy = y - iy;
    
    return spline4(fx,
        spline4(fy,
            ds_grid_get(id,ix-1,iy-1),
            ds_grid_get(id,ix-1,iy  ),
            ds_grid_get(id,ix-1,iy+1),
            ds_grid_get(id,ix-1,iy+2)),
        spline4(fy,
            ds_grid_get(id,ix  ,iy-1),
            ds_grid_get(id,ix  ,iy  ),
            ds_grid_get(id,ix  ,iy+1),
            ds_grid_get(id,ix  ,iy+2)),
        spline4(fy,
            ds_grid_get(id,ix+1,iy-1),
            ds_grid_get(id,ix+1,iy  ),
            ds_grid_get(id,ix+1,iy+1),
            ds_grid_get(id,ix+1,iy+2)),
        spline4(fy,
            ds_grid_get(id,ix+2,iy-1),
            ds_grid_get(id,ix+2,iy  ),
            ds_grid_get(id,ix+2,iy+1),
            ds_grid_get(id,ix+2,iy+2)));
}