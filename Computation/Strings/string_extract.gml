#define string_extract
/// string_extract(str,sep,index)
//  GM:S v2.3+ compatible
//
//  Returns the element at the given index within a string of elements.
//
//  eg. string_extract("cat,dog,mouse", "," ,1) == "dog"
//
//  @param str         elements, string
//  @param sep         element separator, string
//  @param index       element to return, [0..N-1], real
//
/// GMLscripts.com/license
function string_extract(str,sep,index) {
    var ind,len;
    ind = index;
    len = string_length(sep)-1;
    repeat (ind) str = string_delete(str,1,string_pos(sep,str)+len);
    str = string_delete(str,string_pos(sep,str),string_length(str));
    return str;
}