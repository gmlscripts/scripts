#define gauss
/// gauss(mean,deviation)
//  GM:S v2.3+ compatible
//
//  Returns a pseudo-random number with an exact Gaussian distribution.
//
//  @param mean        mean value of the distribution, real
//  @param deviation   standard deviation of distribution, real
//
/// GMLscripts.com/license
function gauss(mean,deviation) {
    var x1, x2, w;
    
    do {
        x1 = random(2) - 1;
        x2 = random(2) - 1;
        w = x1*x1 + x2*x2;
    } until (0 < w && w < 1);
    
    w = sqrt(-2 * ln(w)/w);
    return mean + deviation * x1 * w;
}