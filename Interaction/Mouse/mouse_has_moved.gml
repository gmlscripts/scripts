/// @func   mouse_has_moved()
///
/// @desc   Returns true if the mouse has moved since
///         it was last checked, false otherwise.
///         Only movements within the game window or
///         canvas are detected.
///
/// @return {bool}      true if the mouse has moved
///
/// GMLscripts.com/license

function mouse_has_moved() {
    static mx = mouse_x;
    static my = mouse_y;
    if (mx != mouse_x || my != mouse_y) {
        mx = mouse_x;
        my = mouse_y;
        return true;
    }
    return false;
}