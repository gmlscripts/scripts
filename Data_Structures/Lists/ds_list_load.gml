#define ds_list_load
/// ds_list_load(filename [,separator])
//  GM:S v2.3+ compatible
//
//  Returns as ds_list retrieved from a given file, or (-1) on error.
//
//  @param filename    file path to save the list to, string
//  @param separator   separator used between elements, string (optional)
//
//  If separator is not given, each list element must be on a separate line.
//  If separator also appears within data, the list will not load correctly.
//
/// GMLscripts.com/license
function ds_list_load(filename) {
    var dsid,sep,fid,dat,len,ind,pos;
    if (is_string(separator)) sep = separator; else sep = chr(13)+chr(10);
    fid = file_text_open_read(filename);
    if (fid > 0) {
        dat = "";
        while (!file_text_eof(fid)) {
            dat += file_text_read_string(fid);
            file_text_readln(fid);
        }
        dat += sep;
        len = string_length(sep);
        ind = 0;
        dsid = ds_list_create();
        repeat (string_count(sep,dat)) {
            pos = string_pos(sep,dat)-1;
            ds_list_add(dsid,string_copy(dat,1,pos));
            dat = string_delete(dat,1,pos+len);
            ind += 1;
        }
        file_text_close(fid);
        return dsid;
    }else{
        return -1;
    }
}