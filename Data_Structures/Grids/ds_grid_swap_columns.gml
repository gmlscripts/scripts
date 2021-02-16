#define ds_grid_swap_columns
/// ds_grid_swap_columns(id,col1,col2)
//  GM:S v2.3+ compatible
//
//  Exchanges the contents of two entire grid columns.
//
//  @param id          grid data structure, real
//  @param col1        1st column of the exchange, real
//  @param col2        2nd column of the exchange, real
//
/// GMLscripts.com/license
function ds_grid_swap_columns(id,col1,col2) {
    var i, temp;
    i = 0;
    repeat (ds_grid_height(id)) {
        temp = ds_grid_get(id, col1, i);
        ds_grid_set(id, col1, i, ds_grid_get(id, col2, i));
        ds_grid_set(id, col2, i, temp);
        i += 1;
    }
    return 0;
}