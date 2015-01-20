#define map_sounds
/// map_sounds(map,file)
//
//  Fills a given map data structure with the id values of all
//  sound resources, keyed by strings of their names. A sound
//  file is required in order for this function to work.
//
//      map         map data structure, real
//      file        sound file name, string
//
/// GMLscripts.com/license
{
    var no,i,ds_map;
    ds_map = argument0;
    no = sound_add(argument1,0,false);
    if (no != -1) {
        sound_delete(no);
        for (i=0; i<no; i+=1) {
            if (sound_exists(i)) {
                ds_map_add(ds_map,sound_get_name(i),i);
            }
        }
    }
    return 0;
}