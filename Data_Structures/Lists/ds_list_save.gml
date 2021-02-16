#define ds_list_save
/// ds_list_save(dsid,filename [,separator])
//  GM:S v2.3+ compatible
//
//  Saves a list to a given file. Returns 0 on success, (-1) on error.
//
//  @param dsid        ds_list to be saved, real
//  @param filename    file path to save the list to, string
//  @param separator   string used between elements, string (optional)
//
//  If separator is not given, each list element will be on a separate line.
//  If separator also appears within data, the list will not load correctly.
//
/// GMLscripts.com/license
function ds_list_save(dsid,filename) {
    var sep,fid,i;
    if (is_string(separator)) sep = separator; else sep = chr(13)+chr(10);
    fid = file_text_open_write(filename);
    if (fid > 0) {
        for(i=0; i<ds_list_size(dsid); i+=1) {
            if (i != 0) file_text_write_string(fid,sep);
            file_text_write_string(fid,string(ds_list_find_value(dsid,i)));
        }
        file_text_close(fid);
        return 0;
    }else{
        return -1;
    }
}