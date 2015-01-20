#define rot13
/// rot13(str)
//
//  Returns the given text encrypted/decrypted with the rot13 algorithm.
//
//      str         text to be encrypted/decrypted, string
//
/// GMLscripts.com/license
{
    var a, b, str, len, val, i;
    a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    b = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm";
    str = string_letters(argument0);
    len = string_length(str);
    val = "";
    for (i=1; i<=len; i+=1)
    val += string_char_at(b,string_pos(string_char_at(str,i),a));
    return val;
}