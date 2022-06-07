/// @func   ds_grid_get_bicubic(grid, x, y)
///
/// @desc   Returns the bicubic interpolation of the sixteen grid
///         cells surrounding the given fractional coordinate.
///         Samples taken outside of grid are treated as zero.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      x           x-coordiante to sample
/// @param  {real}      y           y-coordinate to sample
///
/// @return {real}      sampled value
///
/// GMLscripts.com/license

function ds_grid_get_bicubic(grid, x, y)
{
    var ix = floor(x);
    var iy = floor(y);
    var fx = x - ix;
    var fy = y - iy;
    
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);

    // Bounds check
    if (ix < -2 || ix > w || iy < -2 || iy > h) 
    {
        return 0;
    }

    // Copy sample region to simplify safe sampling
    var x1 = clamp(ix-1, 0, w-1);
    var y1 = clamp(iy-1, 0, h-1);
    var x2 = clamp(ix+2, 0, w-1);
    var y2 = clamp(iy+2, 0, h-1);
    var xp = clamp(1-ix, 0, 3);
    var yp = clamp(1-iy, 0, 3);
    
    var safe = ds_grid_create(4, 4);
    ds_grid_set_grid_region(safe, grid, x1, y1, x2, y2, xp, yp);

    // Cubic spline function
    var _spline = function(t, knot1, knot2, knot3, knot4)
    {
        if (t <= 0) return knot2;
        if (t >= 1) return knot3;
        var k0 = -0.5 * knot1;
        var k3 = 0.5 * knot4;
        var c3 = k0 + 1.5 * knot2 - 1.5 * knot3 + k3;
        var c2 = knot1 - 2.5 * knot2 + 2 * knot3 - k3;
        var c1 = k0 + 0.5 * knot3;
        var c0 = knot2;
        return ((c3 * t + c2) * t + c1) * t + c0;
    }

    // Bicubic interpolation
    var n = _spline(fx,
        _spline(fy,
            ds_grid_get(safe, 0, 0),
            ds_grid_get(safe, 0, 1),
            ds_grid_get(safe, 0, 2),
            ds_grid_get(safe, 0, 3)),
        _spline(fy,
            ds_grid_get(safe, 1, 0),
            ds_grid_get(safe, 1, 1),
            ds_grid_get(safe, 1, 2),
            ds_grid_get(safe, 1, 3)),
        _spline(fy,
            ds_grid_get(safe, 2, 0),
            ds_grid_get(safe, 2, 1),
            ds_grid_get(safe, 2, 2),
            ds_grid_get(safe, 2, 3)),
        _spline(fy,
            ds_grid_get(safe, 3, 0),
            ds_grid_get(safe, 3, 1),
            ds_grid_get(safe, 3, 2),
            ds_grid_get(safe, 3, 3)));
            
    ds_grid_destroy(safe);

    return n;
}
