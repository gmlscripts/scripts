#define map_fonts
/// map_fonts(map)
//
//  Fills a given map data structure with the id values of all
//  font resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var no,i,ds_map;
    ds_map = argument0
    no = font_add("ariel",12,false,false,32,32);
    font_delete(no);
    for (i=0;i<no;i+=1) {
        if (path_exists(i)) {
            ds_map_add(ds_map,path_get_name(i),i)
        }
    }
    return 0;
}