#define ds_grid_set_grid_region
/// ds_grid_set_grid_region(id,source,x1,y1,x2,y2,xpos,ypos)
//
//  Copies the contents of a region of cells from a source grid to a
//  destination grid.  This function replaces the buggy Game Maker 7
//  function of the same name and adds the function to Game Maker 6.
//
//      id          destination grid data structure, real
//      source      source grid data structure, real
//      x1,y1       upper-left corner of the region to copy, real
//      x2,y2       lower-right corner of the region to copy, real
//      xpos,ypos   position in the destination to copy values to, real
//
/// GMLscripts.com/license
{
    var copy,xoff,yoff,i,j;
    if (argument0 != argument1) copy = -1;
    else {
        copy = ds_grid_create(argument4+1,argument5+1);
        for (i=argument2; i<=argument4; i+=1) {
            for (j=argument3; j<=argument5; j+=1) {
                ds_grid_set(copy,i,j,ds_grid_get(argument1,i,j));
            }
        }
        argument1 = copy;
    }
    xoff = argument6-argument2;
    yoff = argument7-argument3;
    for (i=argument2; i<=argument4; i+=1) {
        for (j=argument3; j<=argument5; j+=1) {
            ds_grid_set(argument0,i+xoff,j+yoff,ds_grid_get(argument1,i,j));
        }
    }
    if (copy != -1) ds_grid_destroy(copy);
    return 0;
}