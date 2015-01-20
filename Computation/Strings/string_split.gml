#define string_split
/// string_split(str,num,break)
//
//  Returns a string with break characters inserted at a given interval.
//
//      str         text, string
//      num         number of characters before a break, real
//      break       characters to insert, string
//
/// GMLscripts.com/license
{
    var str,num,brk,len,i;
    str = argument0;
    num = argument1;
    brk = argument2;
    if (num < 1) num = 76;
    if (is_real(brk)) brk = "#";
    len = string_length(str);
    for (i=len-((len-1) mod num); i>num; i-=num) {
        str = string_insert(brk,str,i);
    }
    return str;
}