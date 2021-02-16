#define file_bin_seek_relative
/// file_bin_seek_relative(file,pos)
//  GM:S v2.3+ compatible
//
//  Sets the file seek pointer of an open binary file
//  to a position relative to its current position.
//
//  @param file        file id of an open binary file, real
//  @param pos         relative position to seek, real
//
/// GMLscripts.com/license
function file_bin_seek_relative(file,pos) {
    var offset;
    offset = pos;
    file_bin_seek(file,file_bin_position(file)+offset);
    return 0;
}