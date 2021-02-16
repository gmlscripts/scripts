#define file_bin_read_word
/// file_bin_read_word(file,size,bigend)
//  GM:S v2.3+ compatible
//
//  Returns a word value of a given byte-size from an open binary file.
//
//  @param file        file id of an open binary file, real
//  @param size        size of the word in bytes, real
//  @param bigend      true to use big-endian byte order (MSB first), bool
//
/// GMLscripts.com/license
function file_bin_read_word(file,size,bigend) {
    var value,i,b;
    value = 0;
    for (i=0; i<size; i+=1) {
        b[i] = file_bin_read_byte(file);
    }
    if (bigend) for (i=0; i<size; i+=1) value = value << 8 | b[i];
    else for (i=size-1; i>=0; i-=1) value = value << 8 | b[i];
    return value;
}