#ds_grid_get_bilinear
/// ds_grid_get_bilinear(id,x,y)
//
//  Returns the bilinear interpolation of the four grid
//  cells surrounding a given fractional coordinate.
//
//      id          grid data structure, real
//      x,y         coordinate pair, real
//
/// GMLscripts.com/license
{
    var ix,iy,fx,fy,A,B;
    ix = floor(argument1);
    iy = floor(argument2);
    fx = argument1 - ix;
    fy = argument2 - iy;
 
    A = ds_grid_get(argument0,ix,iy);
    B = ds_grid_get(argument0,ix+1,iy);
    A += fy*(ds_grid_get(argument0,ix,iy+1)-A);
    B += fy*(ds_grid_get(argument0,ix+1,iy+1)-B);
    return A+fx*(B-A);
}