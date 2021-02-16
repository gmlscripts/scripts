#define map_sounds
/// map_sounds(map,file)
//  GM:S v2.3+ compatible
//
//  Fills a given map data structure with the id values of all
//  sound resources, keyed by strings of their names. A sound
//  file is required in order for this function to work.
//
//  @param map         map data structure, real
//  @param file        sound file name, string
//
/// GMLscripts.com/license
function map_sounds(map,file) {
    var no,i,ds_;
    ds_map = map;
    no = sound_add(file,0,false);
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