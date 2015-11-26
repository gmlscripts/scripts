#define json_encode_pretty
/// json_encode_pretty(data)
//
//  Encodes the given map into pretty json, formatted with
//  tabs and newline characters (#). Note that json formatted
//  in this way can not be passed directly into GameMaker's
//  json_decode function, you must remove the newline characters
//  first.
//
//      data        The map to encode
//
/// GMLScripts.com/license
{
    var data, str, indent;
    data = argument0;
    str = json_encode(data);
    indent = 0;
    var res = "";
    var tabstr = "";
    var len = string_length(str);
    while string_length(str) > 0
    {
        var open = string_pos("{",str);
        var close = string_pos("}",str);
        var comma = string_pos(",",str);
        var open_array = string_pos("[",str);
        var close_array = string_pos("]",str);
        if (open <= 0) then open = len+1;
        if (close <= 0) then close = len+1;
        if (comma <= 0) then comma = len+1;
        if (open_array <= 0) then open_array = len+1;
        if (close_array <= 0) then close_array = len+1;
        var next = min(open,close,comma,open_array,close_array);
        
        if (next == 1)
        {
            var del = 1;
            if next == open
            {
                indent += 1;
                tabstr = "";
                repeat indent { tabstr += chr(9); }
                res += "{#" + tabstr;
                del = 2; // Delete me + the extra bit of whitespace generated
            }
            else if next == close
            {
                indent -= 1;
                tabstr = "";
                repeat indent { tabstr += chr(9); }
                res += "#" + tabstr + "}";
            }
            else if next == comma
            {
                res += ",#"+tabstr;
                del = 2; // Delete me + the extra bit of whitespace generated
            }
            else if next == open_array
            {
                indent += 1;
                tabstr = "";
                repeat indent { tabstr += chr(9); }
                res += "[#"+tabstr;
                del = 2; // Delete me + the extra bit of whitespace generated
            }
            else if next == close_array
            {
                indent -= 1;
                tabstr = "";
                repeat indent { tabstr += chr(9); }
                res += "#" + tabstr + "]";
            }
            str = string_delete(str,1,del);
        }
        else
        {
            res += string_copy(str,1,next-1);
            str = string_delete(str,1,next-1);
        }
        len = string_length(str);
    }
    return res;
}
