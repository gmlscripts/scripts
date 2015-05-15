#define string_random
/// string_random(str,length)
//
//  Returns a string of a given length composed of characters 
//  randomly selected from a given set. If the set is empty, 
//  all 256 possible characters will be used.
//
//      str         set of characters, string
//      length      number of characters to return
//
/// GMLscripts.com/license
{
    var str,cnt,out,len;
    str = argument0;
    cnt = argument1;
    out = "";
    len = string_length(str);
    if (len > 0) {
        repeat (cnt) out += string_char_at(str,floor(random(len))+1);
    } else {
        repeat (cnt) out += chr(floor(random(256)));
    }
    return out;
}
