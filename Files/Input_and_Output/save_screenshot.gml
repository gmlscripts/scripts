#define save_screenshot
/// save_screenshot(name,folder)
//  GM:S v2.3+ compatible
//
//  Saves a successively numbered screenshot within the working
//  directory. Returns true on success, false otherwise.
//
//  @param name        prefix to assign screenshots, string
//  @param folder      subfolder to save to (eg. "screens\"), string
//
/// GMLscripts.com/license
function save_screenshot(name,folder) {
    var i,f;
    i = 0;
    // If there is a file with the current name and number,
    // advance counter and keep looking:
    do {
        fname = working_directory+"\"+folder+name+"_"+string(i)+".png";
        i += 1;
    } until (!file_exists(fname))
    // Once we've got a unused number we'll save the screenshot under it:
    screen_save(fname);
    return file_exists(fname);
}