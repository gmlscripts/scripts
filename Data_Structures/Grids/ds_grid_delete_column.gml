/// @func   ds_grid_delete_column(grid, col)
///
/// @desc   Deletes from a grid the column at a given column
///         index. The grid is reduced in width by one.
///
///         Warning: Attempting to delete a column from a grid
///         with only one column will generate an error.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      col         column index
///
/// GMLscripts.com/license

function ds_grid_delete_column(grid, col)
{
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
   
    ds_grid_set_grid_region(grid, grid, col+1, 0, w-1, h-1, col, 0);
    ds_grid_resize(grid, w-1, h);
}
