#define ds_grid_delete_column
/// ds_grid_delete_column(grid,col)
//  GM:S v2.3+ compatible
//
//  Deletes from a grid the column at a given column
//  index. The grid is reduced in width by one.
//
//  @param grid        grid data structure, id
//  @param col         column index, integer
//
//  Warning: Attempting to delete a column from a grid
//  with only one column will generate an error.
//
/// GMLscripts.com/license
function ds_grid_delete_column(grid,col) {
    
    var col = col;
    
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
    
    ds_grid_set_grid_region(grid, grid, col+1, 0, w-1, h-1, col, 0);
    ds_grid_resize(grid, w-1, h);
}