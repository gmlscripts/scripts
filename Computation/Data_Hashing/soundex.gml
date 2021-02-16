#define soundex
/// soundex(str)
//  GM:S v2.3+ compatible
//
//  Returns the Soundex value of the given string.
//  Soundex values are short strings of similar values
//  for words which sound similar in spoken English.
//  It was developed to help index related family names.
//
//  @param str         English word, string
//
/// GMLscripts.com/license
function soundex(str) {
    var ing_upper(string_letters(str));
    var len = string_length(str);
    if (len == 0) return "";
    var tab = "0123012X02245501262301X202";
    var out = string_char_at(str,1);
    var lastc = out;
    var lastv = string_char_at(tab,ord(out)-64);
    for (var pos=2; pos<=len; pos++) {
        var char = string_char_at(str,pos);
        var val = string_char_at(tab,ord(char)-64);
        if (char == lastc) continue;
        if (val == "X") continue;
        lastc = char;
        if (val == lastv) continue;
        lastv = val;
        if (val == "0") continue;
        out += val;
    }
    out = string_copy(out+"000",1,4);
    return out;
}