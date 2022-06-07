/// @func   ds_grid_get_bilinear(grid, x, y)
///
/// @desc   Returns the bilinear interpolation of the four grid
///         cells surrounding a given fractional coordinate.
///         Samples taken outside of grid are treated as zero.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      x           x-coordiante to sample
/// @param  {real}      y           y-coordinate to sample
///
/// @return {real}      sampled value
///
/// GMLscripts.com/license

function ds_grid_get_bilinear(grid, x, y)
{
    var ix = floor(x);
    var iy = floor(y);
    var fx = x - ix;
    var fy = y - iy;

    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);

    var x1 = ix;
    var y1 = iy;
    var x2 = ix+1;
    var y2 = iy+1;

    // Sample grid with bounds checking
    var s00 = 0, s01 = 0, s10 = 0, s11 = 0;
    if (x1 >= 0 && x1 < w) {
        if (y1 >= 0 && y1 < h) s00 = ds_grid_get(grid, x1, y1);
        if (y2 >= 0 && y2 < h) s01 = ds_grid_get(grid, x1, y2);
    }
    if (x2 >= 0 && x2 < w) {
        if (y1 >= 0 && y1 < h) s10 = ds_grid_get(grid, x2, y1);
        if (y2 >= 0 && y2 < h) s11 = ds_grid_get(grid, x2, y2);
    }

    var A = s00 + fy * (s01 - s00);
    var B = s10 + fy * (s11 - s10);

    return A + fx * (B - A);
}
