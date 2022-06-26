/// @func   gauss(m, sd)
///
/// @desc   Returns a pseudo-random number with an exact Gaussian distribution.
///
/// @param  {real}      m           mean value of the distribution
/// @param  {real}      sd          standard deviation of distribution
///
/// @return {real}      random number with Gaussian distribution
///
/// GMLscripts.com/license

function gauss(m, sd)
{
    var x1, x2, w;
    do {
        x1 = random(2) - 1;
        x2 = random(2) - 1;
        w = x1 * x1 + x2 * x2;
    } until (0 < w && w < 1);

    w = sqrt(-2 * ln(w) / w);
    return m + sd * x1 * w;
}
