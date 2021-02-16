#define factor_quadratic
/// factor_quadratic(b,c)
//  GM:S v2.3+ compatible
//
//  Returns a string of factors for any quadratic equation (ax^2+bx+c=0),
//  where a = 1 and b and c are integers. If it cannot be factored
//  with integer values only, the original quadratic is returned.
//
//  @param b           value for the coefficient of x, real
//  @param c           value for the constant, real
//
/// GMLscripts.com/license
function factor_quadratic(b,c) {
    var bcbrk,a,t;
    bb = b;
    cc = c;
    if (b < 0) { bb = -b; }
    if (c < 0) { cc = -c; }
    brk = 0;
    for (a = -(max(bb,cc)); a <= max(bb,cc); a += 1) {
        for (t = -(max(bb,cc)); t <= max(bb,cc); t += 1) {
            if (a * t == c and a + t == b) { brk = 1; break; }
        }
        if (brk == 1) { break; }
    }
    if (brk == 0) {
        if (b == 0) { b = ""; }
        else if (sign(b) > 0) { b = "+" + string(b)}
        else { b = string(b); }
        if (c == 0) { c = ""; }
        else if (sign(c) > 0) { c = "+" + string(c)}
        else { c = string(c); }
        return "x^2" + b + "x" + c;
    }
    if (a == 0) { a = ""; }
    else if (sign(a) > 0) { a = "+" + string(a)}
    else { a = string(a); }
    if (t == 0) { t = ""; }
    else if (sign(t) > 0) { t = "+" + string(t)}
    else { t = string(t); }
    return "(x" + a + ")(x" + t + ")";
}