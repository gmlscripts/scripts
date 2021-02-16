#define ds_grid_swap_rows
/// ds_grid_swap_rows(id,row1,row2)
//  GM:S v2.3+ compatible
//
//  Exchanges the contents of two entire grid rows.
//
//  @param id          grid data structure, real
//  @param row1        1st row of the exchange, real
//  @param row2        2nd row of the exchange, real
//
/// GMLscripts.com/license
function ds_grid_swap_rows(id,row1,row2) {
    var i, temp;
    i = 0;
    repeat (ds_grid_width(id)) {
        temp = ds_grid_get(id, i, row1);
        ds_grid_set(id, i, row1, ds_grid_get(id, i, row2));
        ds_grid_set(id, i, row2, temp);
        i += 1;
    }
    return 0;
}