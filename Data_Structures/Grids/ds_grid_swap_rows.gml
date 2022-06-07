/// @func   ds_grid_swap_rows(grid, row1, row2)
///
/// @desc   Exchanges the contents of two entire grid rows.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      row1        1st row of the exchange
/// @param  {real}      row2        2nd row of the exchange
///
/// GMLscripts.com/license

function ds_grid_swap_rows(grid, row1, row2)
{
    for (var i=0; i<ds_grid_width(grid); i++) {
        var temp = ds_grid_get(grid, i, row1);
        ds_grid_set(grid, i, row1, ds_grid_get(grid, i, row2));
        ds_grid_set(grid, i, row2, temp);
    }
}
