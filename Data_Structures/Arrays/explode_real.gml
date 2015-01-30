#define explode_real
/*
**  Usage:  
**      size = explode_real(array,sep,data);
**
**  Arguments:  
**      array       name of a local array, string
**      sep         seperator character, string
**      data        array data, string
**
**  Returns:
**      size        size of the array of data
**
**  Notes:
**      Converts a string of data with elements seperated
**      by a delimiter into an array of reals.
**
**  GMLscripts.com
*/
{
    var arr,sep,dat,len,ind,pos;
    arr = argument0;
    sep = argument1;
    dat = argument2 + sep;
    len = string_length(sep);
    ind = 0;
    repeat (string_count(sep,dat)) {
        pos = string_pos(sep,dat)-1;
        variable_local_array_set(arr,ind,real(string_copy(dat,1,pos)));
        dat = string_delete(dat,1,pos+len);
        ind += 1;
    }
    return ind;
}