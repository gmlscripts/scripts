#define ds_grid_swap_columns
/// ds_grid_swap_columns(id,col1,col2)
//
//  Exchanges the contents of two entire grid columns.
//
//      id          grid data structure, real
//      col1        1st column of the exchange, real
//      col2        2nd column of the exchange, real
//
/// GMLscripts.com/license
{
    var i, temp;
    i = 0;
    repeat (ds_grid_height(argument0)) {
        temp = ds_grid_get(argument0, argument1, i);
        ds_grid_set(argument0, argument1, i, ds_grid_get(argument0, argument2, i));
        ds_grid_set(argument0, argument2, i, temp);
        i += 1;
    }
    return 0;
}