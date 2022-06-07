/// @func   ds_grid_swap_columns(grid, col1, col2)
///
/// @desc   Exchanges the contents of two entire grid columns.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      col1        1st column of the exchange
/// @param  {real}      col2        2nd column of the exchange
///
/// GMLscripts.com/license

function ds_grid_swap_columns(grid, col1, col2)
{
    for (var i=0; i<ds_grid_height(grid); i++) {
        var temp = ds_grid_get(grid, col1, i);
        ds_grid_set(grid, col1, i, ds_grid_get(grid, col2, i));
        ds_grid_set(grid, col2, i, temp);
    }
}
