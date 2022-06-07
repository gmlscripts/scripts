/// @func   ds_grid_delete_row(grid, row)
///
/// @desc   Deletes from a grid the row at a given row
///         index. The grid is reduced in height by one.
///
///         Warning: Attempting to delete a row from a grid
///         with only one row will generate an error.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      row         row index
///
/// GMLscripts.com/license

function ds_grid_delete_row(grid, row)
{
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
   
    ds_grid_set_grid_region(grid, grid, 0, row+1, w-1, h-1, 0, row);
    ds_grid_resize(grid, w, h-1);
}
