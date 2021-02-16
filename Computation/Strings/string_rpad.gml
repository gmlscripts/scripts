#define string_rpad
/// string_rpad(str,length,padstr)
//  GM:S v2.3+ compatible
//
//  Returns a string padded to a certain length 
//  by adding another string to its right.
//
//  eg. string_rpad("1234", 7, "0") == "1234000"
//
//  @param str         string of text, string
//  @param length      desired total length, real
//  @param padstr      padding, string
//
/// GMLscripts.com/license
function string_rpad(str,length,padstr) {
    var len,pad,padsize,padding,out;
    len = length;
    pad = padstr;
    padsize = string_length(pad);
    padding = max(0,len - string_length(str));
    out  = str;
    out += string_repeat(pad,padding div padsize);
    out += string_copy(pad,1,padding mod padsize);
    out  = string_copy(out,1,len);
    return out;
}