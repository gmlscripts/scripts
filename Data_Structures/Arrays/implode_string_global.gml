#define implode_string_global
/*
**  Usage:
**      implode_string_global(sep,array,size)
**
**  Arguments:
**      sep         string used to between elements
**      array       name of an array given as a string
**      size        number of elements in the array
**
**  Returns:
**      a string comprised of each element of the given global
**      array of strings seperated by the given seperator
**
**  GMLscripts.com
*/
{
    var sep,arr,num,out,ind;
    sep = argument0;
    arr = argument1;
    num = argument2;
    out = "";
    ind = 0;
    repeat (num) {
        out += variable_global_array_get(arr,ind)+sep;
        ind += 1;
    }
    out = string_copy(out,1,string_length(out)-string_length(sep));
    return out;
}