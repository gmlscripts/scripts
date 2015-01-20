#define file_bin_write_word
/// file_bin_write_word(file,size,bigend,value)
//
//  Writes a binary word of a given byte-size to an open binary file.
//
//      file        file id of an open binary file, real
//      size        size of the word in bytes, real
//      bigend      true to use big-endian byte order (MSB first), bool
//      value       integer value to write, real
//
/// GMLscripts.com/license
{
    var file,size,bigend,value,i,b;
    file = argument0;
    size = argument1;
    bigend = argument2;
    value = argument3;
    for (i=0; i<size; i+=1) {
        b[i] = value & 255;
        value = value >> 8;
    }
    if (bigend) for (i=size-1; i>=0; i-=1) file_bin_write_byte(file,b[i]);
    else for (i=0; i<size; i+=1) file_bin_write_byte(file,b[i]);
    return 0;
}