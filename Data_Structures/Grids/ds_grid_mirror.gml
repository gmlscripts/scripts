/// @func   ds_grid_mirror(grid, horiz, vert)
///
/// @desc   Rearranges the elements of a given grid by mirroring
///         horizontally and/or vertically.
///
/// @param  {grid}      grid        grid data structure
/// @param  {bool}      horiz       true mirrors horizontally
/// @param  {bool}      vert        true mirrors vertically
///
/// GMLscripts.com/license

function ds_grid_mirror(grid, horiz, vert)
{
    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);
    var temp = ds_grid_create(w, h);
    if (horiz) {
        for (var i=0; i<w; i++) {
            ds_grid_set_grid_region(temp, grid, i, 0, i, h-1, w-i-1, 0);
        }
        ds_grid_copy(grid, temp);
    }
    if (vert) {
        for (var i=0; i<h; i++) {
            ds_grid_set_grid_region(temp, grid, 0, i, w-1, i, 0, h-i-1);
        }
        ds_grid_copy(grid, temp);
    }
    ds_grid_destroy(temp);
}
