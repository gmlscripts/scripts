#define ds_map_save
/// ds_map_save(id, file [,delim])
//
//  Saves the contents of a given grid 
//  data structure into a file.
//
//      id          map data structure, real
//      file        file name, string
//      delim       delimiter used between elements, optional
//                  0 = Carriage Return (default)
//                  1 = Comma (for CSV files)
//                  2 = Semicolon
//              other = a string of your choice
//
/// GMLscripts.com/license
{
    var FileOut, NextKey, i;

    FileOut = file_text_open_write(argument1);

    if ( ds_map_size(argument0) > 0 ) {
        NextKey = ds_map_find_first(argument0);
        file_text_write_string(FileOut,string(NextKey)+', ');
        file_text_write_string(FileOut,string(ds_map_find_value(argument0,NextKey)));
        NextKey = ds_map_find_next(argument0,NextKey);
        // Define the format to use
        switch (argument2) {
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
                file_text_write_string(FileOut,string(argument2));
                break;
        }

        if ( ds_map_size(argument0) > 1 ) {
            for ( i = 1; i < ds_map_size(argument0); i += 1 ) {
                file_text_write_string(FileOut,string(NextKey)+', ');
                file_text_write_string(FileOut,string(ds_map_find_value(argument0,NextKey)));
                NextKey = ds_map_find_next(argument0,NextKey);
                // Define the format to use
                switch (argument2) {
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
                         file_text_write_string(FileOut,string(argument2));
                         break;
                }
            } 
        }
    }
    
    file_text_close(FileOut);
    
    return 0;
}