#define rot13
/// rot13(str)
//  GM:S v2.3+ compatible
//
//  Returns the given text encrypted/decrypted with the rot13 algorithm.
//
//  @param str         text to be encrypted/decrypted, string
//
/// GMLscripts.com/license
function rot13(str) {
    var a, b,  len, val, i;
    a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    b = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm";
    str = string_letters(str);
    len = string_length(str);
    val = "";
    for (i=1; i<=len; i+=1)
    val += string_char_at(b,string_pos(string_char_at(str,i),a));
    return val;
}