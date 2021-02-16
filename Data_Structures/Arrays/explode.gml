#define explode
/// explode(delimiter,string)
//  GM:S v2.3+ compatible
//
//  Returns an array of strings parsed from a given 
//  string of elements separated by a delimiter.
//
//  @param delimiter   delimiter character, string
//  @param string      group of elements, string
//
/// GMLscripts.com/license
function explode(delimiter,string) {
    var arr;
    var del = delimiter;
    var str = string + del;
    var len = string_length(del);
    var ind = 0;
    repeat (string_count(del, str)) {
        var pos = string_pos(del, str) - 1;
        arr[ind] = string_copy(str, 1, pos);
        str = string_delete(str, 1, pos + len);
        ind++;
    }
    return arr;
}