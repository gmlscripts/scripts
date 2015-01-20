#define string_extract
/// string_extract(str,sep,index)
//
//  Returns the element at the given index within a string of elements.
//
//  eg. string_extract("cat,dog,mouse", "," ,1) == "dog"
//
//      str         elements, string
//      sep         element separator, string
//      index       element to return, [0..N-1], real
//
/// GMLscripts.com/license
{
    var str,sep,ind,len;
    str = argument0;
    sep = argument1;
    ind = argument2;
    len = string_length(sep)-1;
    repeat (ind) str = string_delete(str,1,string_pos(sep,str)+len);
    str = string_delete(str,string_pos(sep,str),string_length(str));
    return str;
}