#define exp_dist
/// exp_dist(x)
//
//  Returns a random number from 0 to x with an exponential distribution.
//
//      x           upper bound of desired random value, real
//
/// GMLscripts.com/license
{
    return argument0 * (-ln(random(1)))
}