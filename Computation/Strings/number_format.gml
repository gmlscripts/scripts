#define number_format
/// number_format(num,places,dec,sep)
//  GM:S v2.3+ compatible
//
//  Returns a string representing the given number rounded to
//  a number of decimal places and using the given characters
//  for decimal mark and thousands separator.
//
//  @param num         number, real
//  @param places      places to round to, real
//  @param dec         decimal mark, string
//  @param sep         thousands separator, string
//
/// GMLscripts.com/license
function number_format(num,places,dec,sep) {
    var n,out,pos,i;
    n = num;
    if (!is_string(dec)) dec = ".";
    if (!is_string(sep)) sep = ",";
    out = string_format(abs(n),0,places);
    pos = string_pos(".",out);
    if (pos == 0) pos = string_length(out)+1;
    else out = string_replace(out,".",dec);
    for (i=pos-3; i>1; i-=3) out = string_insert(sep,out,i);
    if (n < 0) out = "-" + out;
    return out;
}