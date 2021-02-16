#define ds_grid_delete_row
/// ds_grid_delete_row(grid,row)
//  GM:S v2.3+ compatible
//
//  Deletes from a grid the row at a given row
//  index. The grid is reduced in height by one.
//
//  @param grid        grid data structure, id
//  @param row         row index, integer
//
//  Warning: Attempting to delete a row from a grid
//  with only one row will generate an error.
//
/// GMLscripts.com/license
function ds_grid_delete_row(grid,row) {
    
    var row = row;
    
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
    
    ds_grid_set_grid_region(grid, grid, 0, row+1, w-1, h-1, 0, row);
    ds_grid_resize(grid, w, h-1);
}