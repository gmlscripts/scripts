#define string_shuffle
/// string_shuffle(str)
//  GM:S v2.3+ compatible
//
//  Returns a given string with charactars shuffled.
//
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_shuffle(str) {
    var out,len,i;
    out = "";
    do {
        len = string_length(str);
        i = floor(random(len))+1;
        out += string_char_at(str,i);
        str = string_delete(str,i,1);
    } until (len <= 1);
    return out;
}