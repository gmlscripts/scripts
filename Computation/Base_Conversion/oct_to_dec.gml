#define oct_to_dec
/// oct_to_dec(oct)
//  GM:S v2.3+ compatible
//
//  Returns an integer converted from an octal string.
//
//  @param oct         octal digits, string
//
/// GMLscripts.com/license
function oct_to_dec(oct) {
    var dec = 0;
    
    var dig = "01234567";
    var len = string_length(oct);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 3 | (string_pos(string_char_at(oct, pos), dig) - 1);
    }
    
    return dec;
}