#define ds_grid_swap_rows
/// ds_grid_swap_rows(id,row1,row2)
//
//  Exchanges the contents of two entire grid rows.
//
//      id          grid data structure, real
//      row1        1st row of the exchange, real
//      row2        2nd row of the exchange, real
//
/// GMLscripts.com/license
{
    var i, temp;
    i = 0;
    repeat (ds_grid_width(argument0)) {
        temp = ds_grid_get(argument0, i, argument1);
        ds_grid_set(argument0, i, argument1, ds_grid_get(argument0, i, argument2));
        ds_grid_set(argument0, i, argument2, temp);
        i += 1;
    }
    return 0;
}
