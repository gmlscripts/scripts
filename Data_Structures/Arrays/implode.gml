#define implode
/// implode(delimiter,array)
//  GM:S v2.3+ compatible
//
//  Returns a string of elements from a given array
//  of strings and separated by a delimiter.
//
//  @param delimiter   delimiter character, string
//  @param array       group of elements, array
//
/// GMLscripts.com/license
function implode(delimiter,array) {
    var del = ;
    var arr = array;
    var out = "";
    var ind = 0;
    var num = array_length_1d(arr);
    repeat (num-1) {
        out += arr[ind] + del;
        ind++;
    }
    out += arr[ind];
    return out;
}