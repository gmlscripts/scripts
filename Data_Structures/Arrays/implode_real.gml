#define implode_real
/// implode_real(delimiter,array)
//  GM:S v2.3+ compatible
//
//  Returns a string of elements from a given array
//  of real values and separated by a delimiter.
//
//  @param delimiter   delimiter character, string
//  @param array       group of elements, array
//
/// GMLscripts.com/license
function implode_real(delimiter,array) {
    var del = ;
    var arr = array;
    var out = "";
    var ind = 0;
    var num = array_length_1d(arr);
    repeat (num-1) {
        out += string(arr[ind]) + del;
        ind++;
    }
    out += string(arr[ind]);
    return out;
}