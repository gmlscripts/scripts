/// @func   erf(x)
///
/// @desc   Returns the probability that a Gaussian random number falls
///         within a given range. This is known as the "error function"
///         or cumulative distribution function.
///
/// @param  {real}      x           value
///
/// @return {real}      value of erf(x)
///
/// GMLscripts.com/license

function erf(x)
{
    var xAbs = abs(x) * sqrt(2);
    var c = 0;
    if (xAbs <= 37) {
        var e = exp(-xAbs*xAbs / 2);
        if (xAbs < 7.07106781186547) {
            var b = 0.0352624965998911 * xAbs + 0.700383064443688;
            b = b * xAbs + 6.37396220353165;
            b = b * xAbs + 33.912866078383;
            b = b * xAbs + 112.079291497871;
            b = b * xAbs + 221.213596169931;
            b = b * xAbs + 220.206867912376;
            c = e * b;
            b = 0.0883883476483184 * xAbs + 1.75566716318264;
            b = b * xAbs + 16.064177579207;
            b = b * xAbs + 86.7807322029461;
            b = b * xAbs + 296.564248779674;
            b = b * xAbs + 637.333633378831;
            b = b * xAbs + 793.826512519948;
            b = b * xAbs + 440.413735824752;
            c /= b;
        }
        else {
            var b = xAbs + 0.65;
            b = xAbs + 4 / b;
            b = xAbs + 3 / b;
            b = xAbs + 2 / b;
            b = xAbs + 1 / b;
            c = e / b / 2.506628274631;
        }
    }
    if (x > 0)
        return 1 - 2 * c;
    else
        return 2 * c - 1;
}
