#define file_text_open_write_all
/// file_text_open_write_all(fname,str)
//
//  Writes a multiline string to a given file. 
//  Lines are delimited by the "#" character.
//  Returns true if successful, false otherwise.
//
//      fname       file to write, string        
//      str         contents to write, string
//
/// GMLscripts.com/license
{
    var file = file_text_open_write(argument0);
    if (file < 0) return false;
    var str = argument1;
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