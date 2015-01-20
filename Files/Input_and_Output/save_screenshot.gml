#define save_screenshot
/// save_screenshot(name,folder)
//
//  Saves a successively numbered screenshot within the working
//  directory, returning true on success, false otherwise.
//
//      name        prefix to assign screenshots, string
//      folder      subfolder to save to (eg. "screens\"), string
//
/// GMLscripts.com/license
{
    var i,fname;
    i = 0;
    // If there is a file with the current name and number,
    // advance counter and keep looking:
    do {
        fname = working_directory+"\"+argument1+argument0+"_"+string(i)+".bmp";
        i += 1;
    } until (!file_exists(fname))
    // Once we've got a unused number we'll save the screenshot under it:
    screen_save(fname);
    return file_exists(fname);
}