#define ds_grid_mirror
/// ds_grid_mirror(id,horiz,vert)
//
//  Rearranges the elements of a given grid by mirroring
//  horizontally and/or vertically.
//
//      id          grid data structure, real
//      horiz       true mirrors horizontally, bool
//      vert        true mirrors vertically, bool
//
/// GMLscripts.com/license
{
    var dsid,horiz,vert,w,h,temp;
    dsid = argument0;
    horiz = argument1;
    vert = argument2;
    w = ds_grid_width(dsid);
    h = ds_grid_height(dsid);
    temp = ds_grid_create(w,h);
    if (horiz) {
        for (i=0;i<w;i+=1) {
            ds_grid_set_grid_region(temp,dsid,i,0,i,h-1,w-i-1,0);
        }
        ds_grid_copy(dsid,temp);
    }
    if (vert) {
        for (i=0;i<h;i+=1) {
            ds_grid_set_grid_region(temp,dsid,0,i,w-1,i,0,h-i-1);
        }
        ds_grid_copy(dsid,temp);
    }
    ds_grid_destroy(temp);
    return 0;
}