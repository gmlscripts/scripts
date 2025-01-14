/// @func   ds_grid_duplicate(grid)
///
/// @desc   Returns a duplicate of the given grid.
///
/// @param  {grid}      grid        ds_grid to duplicate
///
/// @return {grid}      duplicated grid
///
/// GMLscripts.com/license

function ds_grid_duplicate(grid)
{
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
    var newgrid = ds_grid_create(w, h);
    ds_grid_copy(newgrid, grid);
    return newgrid;
}
