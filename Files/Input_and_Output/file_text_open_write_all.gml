#define file_text_open_write_all
/// file_text_open_write_all(fname,str)
//  GM:S v2.3+ compatible
//
//  Writes a multiline string to a given file. 
//  Lines are delimited by the "#" character.
//  Returns true if successful, false otherwise.
//
//  @param fname       file to write, string        
//  @param str         contents to write, string
//
/// GMLscripts.com/license
function file_text_open_write_all(fname,str) {
    var file = file_text_open_write(fname);
    if (file < 0) return false;
    var str = str;
    while (string_length(str) > 0)
    {
        var i = string_pos("#", str);
        if (i > 0)
        {
            file_text_write_string(file,string_copy(str, 1, i-1));
            file_text_writeln(file);
            str = string_delete(str, 1, i);
        }
        else
        {
            file_text_write_string(file, str);
            str = "";
        }
    }
    file_text_close(file);
    return true;
}