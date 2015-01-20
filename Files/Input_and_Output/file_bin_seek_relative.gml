#define file_bin_seek_relative
/// file_bin_seek_relative(file,pos)
//
//  Sets the file seek pointer of an open binary file
//  to a position relative to its current position.
//
//      file        file id of an open binary file, real
//      pos         relative position to seek, real
//
/// GMLscripts.com/license
{
    var file,offset;
    file = argument0;
    offset = argument1;
    file_bin_seek(file,file_bin_position(file)+offset);
    return 0;
}