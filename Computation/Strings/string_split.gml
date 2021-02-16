#define string_split
/// string_split(str,num,break)
//  GM:S v2.3+ compatible
//
//  Returns a string with break characters inserted at a given interval.
//
//  @param str         text, string
//  @param num         number of characters before a break, real
//  @param break       characters to insert, string
//
/// GMLscripts.com/license
function string_split(str,num,break) {
    var brk,len,i;
    brk = break;
    if (num < 1) num = 76;
    if (is_real(brk)) brk = "#";
    len = string_length(str);
    for (i=len-((len-1) mod num); i>num; i-=num) {
        str = string_insert(brk,str,i);
    }
    return str;
}