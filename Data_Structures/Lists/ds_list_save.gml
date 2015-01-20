#define ds_list_save
/*
**  Usage:
**      ds_list_save(dsid,filename [,separator])
**
**  Arguments:
**      dsid            ds_list to be saved
**      filename        file path to save the list to
**      separator       string used as separator between elements (optional)
**
**  Returns:
**      0 if successful, or (-1) on error
**
**  Notes:
**      If separator is not given, each list element will be on a separate line.
**      If separator also appears within data, the list will not load correctly.
**
**  GMLscripts.com
*/
{
    var dsid,filename,sep,fid,i;
    dsid = argument0;
    filename = argument1;
    if (is_string(argument2)) sep = argument2; else sep = chr(13)+chr(10);
    fid = file_text_open_write(filename);
    if (fid > 0) {
        for(i=0; i<ds_list_size(argument0); i+=1) {
            if (i != 0) file_text_write_string(fid,sep);
            file_text_write_string(fid,string(ds_list_find_value(dsid,i)));
        }
        file_text_close(fid);
        return 0;
    }else{
        return -1;
    }
}