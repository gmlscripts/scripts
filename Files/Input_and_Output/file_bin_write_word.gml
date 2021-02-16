#define file_bin_write_word
/// file_bin_write_word(file,size,bigend,value)
//  GM:S v2.3+ compatible
//
//  Writes a binary word of a given byte-size to an open binary file.
//
//  @param file        file id of an open binary file, real
//  @param size        size of the word in bytes, real
//  @param bigend      true to use big-endian byte order (MSB first), bool
//  @param value       integer value to write, real
//
/// GMLscripts.com/license
function file_bin_write_word(file,size,bigend,value) {
    var i,b;
    for (i=0; i<size; i+=1) {
        b[i] = value & 255;
        value = value >> 8;
    }
    if (bigend) for (i=size-1; i>=0; i-=1) file_bin_write_byte(file,b[i]);
    else for (i=0; i<size; i+=1) file_bin_write_byte(file,b[i]);
    return 0;
}