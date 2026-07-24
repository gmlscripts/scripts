/// @func   ds_map_load(file, delim)
///
/// @desc   Loads the contents of a file into a new
///         map data structure, returning its id.
///         Pair delimiters match ds_map_save:
///         0 = newline (default), 1 = comma, 2 = semicolon,
///         other = custom string.
///
/// @param  {string}    file        file name
/// @param  {any}       delim       delimiter between pairs, optional
///
/// @return {map}       loaded map, or -1 if the file cannot be opened
///
/// GMLscripts.com/license

function ds_map_load(file, delim=0)
{
    var fid = file_text_open_read(file);
    if (fid < 0) return -1;

    // Same codes as ds_map_save
    var sep;
    switch (delim) {
        case 0:  sep = "";  break;  // newlines joined while reading
        case 1:  sep = ","; break;
        case 2:  sep = ";"; break;
        default: sep = string(delim); break;
    }

    var map = ds_map_create();
    var data = "";

    // Read the entire file, joining lines so pairs stay comma-separated
    while (!file_text_eof(fid)) {
        data += file_text_read_string(fid);
        if (string_length(data) > 0) {
            var last = string_char_at(data, string_length(data));
            var ends_with_sep = false;
            if (sep != "" && string_length(data) >= string_length(sep)) {
                ends_with_sep = (string_copy(data, string_length(data) - string_length(sep) + 1, string_length(sep)) == sep);
            }
            // Append a join comma unless the buffer already ends with "," or the pair sep
            if (last != "," && !ends_with_sep) {
                data += ",";
            }
        }
        file_text_readln(fid);
    }
    file_text_close(fid);

    if (string_length(data) == 0) return map;

    // Drop trailing pair separator written after the last entry by ds_map_save
    if (sep != "" && string_length(data) >= string_length(sep)
            && string_copy(data, string_length(data) - string_length(sep) + 1, string_length(sep)) == sep) {
        data = string_delete(data, string_length(data) - string_length(sep) + 1, string_length(sep));
    } else if (string_char_at(data, string_length(data)) == ",") {
        data = string_delete(data, string_length(data), 1);
    }

    // Normalize pair separators to commas, then key/value spacing
    if (sep != "" && sep != ",") {
        data = string_replace_all(data, sep, ",");
    }
    // Legacy: allow semicolons in files loaded with other delims
    data = string_replace_all(data, ";", ",");
    data = string_replace_all(data, ", ", ",");
    data = string_replace_all(data, " ,", ",");

    // Odd number of tokens: last value defaults to 0
    var n = ceil((string_count(",", data) + 1) / 2);

    for (var i = 0; i < n; i++) {
        var key, val;
        if (string_count(",", data) > 1) {
            key = string_copy(data, 1, string_pos(",", data) - 1);
            data = string_delete(data, 1, string_pos(",", data));
            val = string_copy(data, 1, string_pos(",", data) - 1);
            data = string_delete(data, 1, string_pos(",", data));
        } else if (string_count(",", data) == 1) {
            key = string_copy(data, 1, string_pos(",", data) - 1);
            data = string_delete(data, 1, string_pos(",", data));
            val = data;
            data = "";
        } else {
            key = data;
            data = "";
            val = 0;
        }
        ds_map_add(map, key, val);
    }

    return map;
}
