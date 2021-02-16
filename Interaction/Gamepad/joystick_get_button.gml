#define joystick_get_button
/// joystick_get_button(id)
//  GM:S v2.3+ compatible
//
//  Returns a button number of a given joystick, if pressed,
//  or 0 if no button is pressed. If more than one button is 
//  pressed, the button with the lowest number is returned.
//
//  @param id          joystick id, real
//
/// GMLscripts.com/license
function joystick_get_button(id) {
    var i;
    for (i=1; i<=joystick_buttons(id); i+=1) {
        if (joystick_check_button(id,i)) return i;
    } 
    return 0;
}