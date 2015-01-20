#define string_ucwords
/// string_ucwords(str)
//
//  Returns a string with each word capitalized.
//
//      str         string of text, string
//
/// GMLscripts.com/license
{
    var str,out,w,i,c,o;
    str = argument0;
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