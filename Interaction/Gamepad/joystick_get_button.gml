#define joystick_get_button
/// joystick_get_button(id)
//
//  Returns a button number of a given joystick, if pressed,
//  or 0 if no button is pressed. If more than one button is 
//  pressed, the button with the lowest number is returned.
//
//      id          joystick id, real
//
/// GMLscripts.com/license
{
    var i;
    for (i=1; i<=joystick_buttons(argument0); i+=1) {
        if (joystick_check_button(argument0,i)) return i;
    } 
    return 0;
}