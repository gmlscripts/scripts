#define map_sprites
/// map_sprites(map)
//
//  Fills a given map data structure with the id values of all
//  sprite resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var surf,no,i,ds_map;
    ds_map = argument0;
    surf = surface_create(1,1);
    no = sprite_create_from_surface(surf,0,0,1,1,false,false,0,0);
    surface_free(surf);
    sprite_delete(no);
    for (i=0; i<no; i+=1) {
        if (sprite_exists(i)) {
            ds_map_add(ds_map,sprite_get_name(i),i);
        }
    }
    return 0;
}