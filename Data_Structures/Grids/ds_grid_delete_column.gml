#define ds_grid_delete_column
/// ds_grid_delete_column(grid,col)
//
//  Deletes from a grid the column at a given column
//  index. The grid is reduced in width by one.
//
//      grid        grid data structure, id
//      col         column index, integer
//
/// GMLscripts.com/license
{
    var grid = argument0;
    var col = argument1;
   
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
   
    ds_grid_set_grid_region(grid, grid, col+1, 0, w-1, h-1, col, 0);
    ds_grid_resize(grid, w-1, h);
}