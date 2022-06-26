/// @func   exp_dist(m)
///
/// @desc   Returns a random number with exponential distribution.
///
/// @param  {real}      m           mean value of the distribution
///
/// @return {real}      random number
///
/// GMLscripts.com/license

function exp_dist(m)
{
    return -m * ln(1-random(1));
}
