#define device_is_desktop
/// device_is_desktop()
//  GM:S v2.3+ compatible
//
//  Returns whether or not the current device is a desktop,
//  workstation or laptop. You can use this to generalize a
//  format for the game based on the approximate user setup.
//
/// GMLscripts.com/license
function device_is_desktop() {
    return 
     os_type == os_windows or
     os_type == os_win8native or
     os_type == os_macosx or
     os_type == os_linux;
}