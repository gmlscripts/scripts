#define ds_map_save
/// ds_map_save(id, file [,delim])
//  GM:S v2.3+ compatible
//
//  Saves the contents of a given grid 
//  data structure into a file.
//
//  @param id          map data structure, real
//  @param file        file name, string
//  @param delim       delimiter used between elements, optional
//                  0 = Carriage Return (default)
//                  1 = Comma (for CSV files)
//                  2 = Semicolon
//              other = a string of your choice
//
/// GMLscripts.com/license
function ds_map_save(id,file) {
    var FileOut, NextKey, i;
    
    FileOut = file_text_open_write(file);
    
    if ( ds_map_size(id) > 0 ) {
        NextKey = ds_map_find_first(id);
        file_text_write_string(FileOut,string(NextKey)+', ');
        file_text_write_string(FileOut,string(ds_map_find_value(id,NextKey)));
        NextKey = ds_map_find_next(id,NextKey);
        // Define the format to use
        switch (delim) {
            case 0:
                file_text_writeln(FileOut);
                break;
            case 1:
                file_text_write_string(FileOut,',');
                break;
            case 2:
                file_text_write_string(FileOut,';');
                break;
            default:
                file_text_write_string(FileOut,string(delim));
                break;
        }
    
        if ( ds_map_size(id) > 1 ) {
            for ( i = 1; i < ds_map_size(id); i += 1 ) {
                file_text_write_string(FileOut,string(NextKey)+', ');
                file_text_write_string(FileOut,string(ds_map_find_value(id,NextKey)));
                NextKey = ds_map_find_next(id,NextKey);
                // Define the format to use
                switch (delim) {
                    case 0:
                        file_text_writeln(FileOut);
                        break;
                    case 1:
                        file_text_write_string(FileOut,',');
                        break;
                    case 2:
                         file_text_write_string(FileOut,';');
                         break;
                    default:
                         file_text_write_string(FileOut,string(delim));
                         break;
                }
            } 
        }
    }
    
    file_text_close(FileOut);
    
    return 0;
}