/// @func   ds_grid_flood_fill(grid, x, y, val)
///
/// @desc   Fills a bounded area within a grid with a given value.
///         The area is bounded by values unequal to the initial
///         value found at a given seeded position.
///
/// @param  {grid}      grid        grid data structure
/// @param  {real}      x           x-coordinate to seed fill from
/// @param  {real}      y           y-coordinate to seed fill from
/// @param  {any}       val         value filling bounded area
///
/// @return {real}      number of cells filled
///
/// GMLscripts.com/license

function ds_grid_flood_fill(grid, x, y, val)
{
    var oldval = grid[# x, y];

    if (val == oldval) return 0;

    var filled = 0;

    var w = ds_grid_width(grid);
    var h = ds_grid_height(grid);

    var stackx = ds_queue_create();
    var stacky = ds_queue_create();

    ds_queue_enqueue(stackx, x);
    ds_queue_enqueue(stacky, y);
       
    while (ds_queue_size(stackx)) {
        var px = ds_queue_dequeue(stackx);
        var py = ds_queue_dequeue(stacky);
        var y1 = py;
        while (y1 >= 0 && grid[# px, y1] == oldval) y1--;
        y1++;
        var spanLeft = false;
        var spanRight = false;
        while (y1 < h && grid[# px, y1] == oldval) {
            grid[# px,y1] = val;
            filled++;
            if (!spanLeft && px > 0 && grid[# px-1, y1] == oldval) {
                ds_queue_enqueue(stackx, px-1);
                ds_queue_enqueue(stacky, y1);
                spanLeft = true;
            } else if (spanLeft && px > 0 && grid[# px-1, y1] != oldval) {
                spanLeft = false;
            }
            if (!spanRight && px < w-1 && grid[# px+1, y1] == oldval) {
                ds_queue_enqueue(stackx, px+1);
                ds_queue_enqueue(stacky, y1);
                spanRight = true;
            } else if (spanRight && px < w-1 && grid[# px+1, y1] != oldval) {
                spanRight = false;
            }
            y1++;
        }
    }

    ds_queue_destroy(stackx);
    ds_queue_destroy(stacky);

    return filled;
}
