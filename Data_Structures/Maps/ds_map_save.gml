/// @func   ds_map_save(map, file, delim)
///
/// @desc   Saves the contents of a given map
///         data structure into a file.
///
/// @param  {map}       map         map data structure
/// @param  {string}    file        file name
/// @param  {any}       delim       delimiter between pairs (optional):
///                                 0 = newline (default)
///                                 1 = comma (CSV)
///                                 2 = semicolon
///                                 other = custom string
///
/// GMLscripts.com/license

function ds_map_save(map, file, delim=0)
{
    var fid = file_text_open_write(file);
    var n = ds_map_size(map);

    if (n > 0) {
        var key = ds_map_find_first(map);
        for (var i = 0; i < n; i++) {
            file_text_write_string(fid, string(key) + ", ");
            file_text_write_string(fid, string(ds_map_find_value(map, key)));
            key = ds_map_find_next(map, key);
            switch (delim) {
                case 0:
                    file_text_writeln(fid);
                    break;
                case 1:
                    file_text_write_string(fid, ",");
                    break;
                case 2:
                    file_text_write_string(fid, ";");
                    break;
                default:
                    file_text_write_string(fid, delim);
                    break;
            }
        }
    }

    file_text_close(fid);
}
