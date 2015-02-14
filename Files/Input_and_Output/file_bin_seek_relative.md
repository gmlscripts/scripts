file_bin_seek_relative
======================

Sets the file seek pointer of an open binary file to a position 
relative to its current position.

    //  test.dat contents: 07 5B CD 15 3A DE 68 B1
    fid = file_bin_open("test.dat", 0);
    b1 = file_bin_read_byte(fid);  //  b1 == 0x07
    file_bin_seek_relative(fid, 5);
    b2 = file_bin_read_byte(fid);  //  b2 == 0x68
    file_bin_seek_relative(fid, -4);
    b3 = file_bin_read_byte(fid);  //  b3 == 0x15
    file_bin_close(fid);

script: file_bin_seek_relative.gml

contributors: Leif902
