#define ds_grid_set_grid_region
/// ds_grid_set_grid_region(id,source,x1,y1,x2,y2,xpos,ypos)
//  GM:S v2.3+ compatible
//
//  Copies the contents of a region of cells from a source grid to a
//  destination grid.  This function replaces the buggy Game Maker 7
//  function of the same name and adds the function to Game Maker 6.
//
//  @param id          destination grid data structure, real
//  @param source      source grid data structure, real
//      x1,y1       upper-left corner of the region to copy, real
//      x2,y2       lower-right corner of the region to copy, real
//      xpos,ypos   position in the destination to copy values to, real
//
/// GMLscripts.com/license
function ds_grid_set_grid_region(id,source,x1,y1,x2,y2,xpos,ypos) {
    var copy,xoff,yoff,i,j;
    if (id != source) copy = -1;
    else {
        copy = ds_grid_create(x2+1,y2+1);
        for (i=x1; i<=x2; i+=1) {
            for (j=y1; j<=y2; j+=1) {
                ds_grid_set(copy,i,j,ds_grid_get(source,i,j));
            }
        }
        source = copy;
    }
    xoff = xpos-x1;
    yoff = ypos-y1;
    for (i=x1; i<=x2; i+=1) {
        for (j=y1; j<=y2; j+=1) {
            ds_grid_set(id,i+xoff,j+yoff,ds_grid_get(source,i,j));
        }
    }
    if (copy != -1) ds_grid_destroy(copy);
    return 0;
}