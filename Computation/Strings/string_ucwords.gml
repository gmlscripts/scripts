#define string_ucwords
/// string_ucwords(str)
//  GM:S v2.3+ compatible
//
//  Returns a string with each word capitalized.
//
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_ucwords(str) {
    var out,w,i,c,o;
    out = "";
    w = true;
    i = 1;
    repeat (string_length(str)) {
        c = string_char_at(str,i);
        o = ord(c);
        if ((o > 8) && (o < 14) || (o == 32)) {
            w = true;
        }else{
            if (w == true) c = string_upper(c);
            w = false;
        }
        out += c;
        i += 1;
    }
    return out;
}