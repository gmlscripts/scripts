#define string_random
/// string_random(str,length)
//  GM:S v2.3+ compatible
//
//  Returns a string of a given length composed of characters 
//  randomly selected from a given set. If the set is empty, 
//  all 256 possible characters will be used.
//
//  @param str         set of characters, string
//  @param length      number of characters to return
//
/// GMLscripts.com/license
function string_random(str,length) {
    var cnt,out,len;
    cnt = length;
    out = "";
    len = string_length(str);
    if (len > 0) {
        repeat (cnt) out += string_char_at(str,floor(random(len))+1);
    } else {
        repeat (cnt) out += chr(floor(random(256)));
    }
    return out;
}