#define ds_map_load
/// ds_map_load(file [,delim])
//
//  Loads the contents of a file into a new 
//  map data structure, returning its id.
//
//      file        file name, string
//      delim       delimiter used between elements, string
//
/// GMLscripts.com/license
{
    var FileIn, MapItems, CurrLine, NumItems, i, TempKey, TempValue;

    // Open the file that contains the map
    FileIn = file_text_open_read(argument0);  // Open the Map File
    MapItems = ds_map_create();               // Create the Map to be read into
    CurrLine = '';                            // Default to an empty string

    // Read the entire file into a variable
    while (!file_text_eof(FileIn)) {
        CurrLine += file_text_read_string(FileIn);
        // Technically we should not have a return and a comma
        // But just incase lets make sure that we do not add an extra one.
        if (string_char_at(CurrLine,string_length(CurrLine)) != ',') {
            if (argument1 != 0) {
                if (string_char_at(CurrLine,string_length(CurrLine)) != string(argument1)) {
                    CurrLine += ',';
                }
            }else{
                CurrLine += ',';
            }
        }
        file_text_readln(FileIn);
    }

    // Remove the final comma
    CurrLine = string_delete(CurrLine,string_length(CurrLine),1);

    // Add Support for other separators.
    CurrLine = string_replace_all(CurrLine,';',',');
    if ( argument1 != 0 ) {
        CurrLine = string_replace_all(CurrLine,string(argument1),',');
    }
    CurrLine = string_replace_all(CurrLine,', ',",");
    CurrLine = string_replace_all(CurrLine,' ,',",");

    // Get the number of items to be placed into the map, if there is an
    // odd number, round up and we will default to 0.
    NumItems = ceil((string_count(',',CurrLine) + 1)/2);

    // Read The Values into the Map
    for( i = 0; i < NumItems; i += 1 ) {
        if ( string_count(',',CurrLine) > 1 ) {
            TempKey = string_copy(CurrLine,1,string_pos(',',CurrLine)-1);
            CurrLine = string_delete(CurrLine,1,string_pos(',',CurrLine));
            TempValue = string_copy(CurrLine,1,string_pos(',',CurrLine)-1);
            CurrLine = string_delete(CurrLine,1,string_pos(',',CurrLine));
        }else{
            if ( string_count(',',CurrLine) = 1 ) {
                TempKey = string_copy(CurrLine,1,string_pos(',',CurrLine)-1);
                CurrLine = string_delete(CurrLine,1,string_pos(',',CurrLine));
                TempValue = CurrLine;
                CurrLine = '';
            }else{
                TempKey = CurrLine;
                CurrLine = '';
                TempValue = 0;
            }
        }
        ds_map_add(MapItems,TempKey,TempValue);
    }
    return (MapItems);
}