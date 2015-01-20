#define ds_grid_shuffle
/// ds_grid_shuffle(id)
//
//  Rearranges the cell contents of a given grid in randomly.
//
//      id          grid data structure, real
//
/// GMLscripts.com/license
{
    var grid,w,h,xx,yy,temp,tx,ty;
    grid = argument0;
    w = ds_grid_width(grid);
    h = ds_grid_height(grid);
    for (xx=0; xx<w; xx+=1) {
        for (yy=0; yy<h; yy+=1) {
            tx = floor(random(w));
            ty = floor(random(h));
            temp = ds_grid_get(grid,xx,yy);
            ds_grid_set(grid,xx,yy,ds_grid_get(grid,tx,ty));
            ds_grid_set(grid,tx,ty,temp);
        }
    }
    return 0;
}