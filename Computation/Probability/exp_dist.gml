#define exp_dist
/// exp_dist(mean)
//  GM:S v2.3+ compatible
//
//  Returns a random number with exponential distribution.
//
//  @param mean        mean value of the distribution, real
//
/// GMLscripts.com/license
function exp_dist(mean) {
    return -mean * ln(1-random(1));
}