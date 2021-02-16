#ds_grid_get_bilinear
/// ds_grid_get_bilinear(id,x,y)
//  GM:S v2.3+ compatible
//
//  Returns the bilinear interpolation of the four grid
//  cells surrounding a given fractional coordinate.
//
//  @param id          grid data structure, real
//      x,y         coordinate pair, real
//
/// GMLscripts.com/license
function ds_grid_get_bilinear(id,x,y) {
    var iiffA,B;
    ix = floor(x);
    iy = floor(y);
    fx = x - ix;
    fy = y - iy;
    
    A = ds_grid_get(id,ix,iy);
    B = ds_grid_get(id,ix+1,iy);
    A += fy*(ds_grid_get(id,ix,iy+1)-A);
    B += fy*(ds_grid_get(id,ix+1,iy+1)-B);
    return A+fx*(B-A);
}