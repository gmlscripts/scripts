#define ds_list_load
/*
**  Usage:
**      dsid = ds_list_load(filename [,separator]);
**
**  Arguments:
**      filename        file path to save the list to
**      separator       string used as separator between elements (optional)
**
**  Returns:
**      ds_list id if successful, or (-1) on error
**
**  Notes:
**      If separator is not given, each list element must be on a separate line.
**      If separator also appears within data, the list will not load correctly.
**
**  GMLscripts.com
*/
{
    var dsid,filename,sep,fid,dat,len,ind,pos;
    filename = argument0;
    if (is_string(argument1)) sep = argument1; else sep = chr(13)+chr(10);
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