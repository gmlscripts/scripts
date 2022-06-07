/// @func   ds_grid_translate(grid, horiz, vert)
///
/// @desc   Shifts the contents of a grid by a given number of rows
///         and columns. The contents are shifted so that they wrap
///         around to the opposite side of the grid data structure.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      horiz       horizontal shift
/// @param  {real}      vert        vertical shift
///
/// GMLscripts.com/license

function ds_grid_translate(grid, horiz, vert)
{
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
    var sx = ((horiz % w) + w) % w;
    var sy = ((vert % h) + h) % h;
    var mx = w - 1;
    var my = h - 1;
    var dx = mx - sx;
    var dy = my - sy;
    var temp = ds_grid_create(w, h);
    ds_grid_set_grid_region(temp, grid, 0, 0, dx, dy, sx, sy);
    if (sx > 0) {
        ds_grid_set_grid_region(temp, grid, dx+1, 0, mx, dy, 0, sy);
    }
    if (sy > 0) {
        ds_grid_set_grid_region(temp, grid, 0, dy+1, dx, my, sx, 0);
    }
    if (sx > 0 && sy > 0) {
        ds_grid_set_grid_region(temp, grid, dx+1, dy+1, mx, my, 0, 0);
    }
    ds_grid_copy(grid, temp);
    ds_grid_destroy(temp);
}
