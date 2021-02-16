#define hex_to_dec
/// hex_to_dec(hex)
//  GM:S v2.3+ compatible
//
//  Returns an integer converted from an hexadeciaml string.
//
//  @param hex         hexadecimal digits, string
//
/// GMLscripts.com/license
function hex_to_dec(hex) {
    var dec = 0;
    
    var dig = "0123456789ABCDEF";
    var len = string_length(hex);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 4 | (string_pos(string_char_at(hex, pos), dig) - 1);
    }
    
    return dec;
}