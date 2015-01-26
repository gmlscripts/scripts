gauss
=====

This script returns a pseudo-random number with Gaussian or normal 
distribution, meaning the values returned tend to cluster around a given 
average or mean value. This could be useful if one needed a random 
behavior or outcome where deviations from the desired target become more 
rare as the magnitude of the deviation increases.

An example use might be an enemy AI whose skill is represented by the 
degree of error in its aiming ability. If a target is at 90 degrees, 
`aim = gauss(90,5)` would return a firing direction with a small degree 
of error. This degree of error (or deviation) is controlled by the second 
argument. In this case, the value returned would be within 5 degrees 
(one standard deviation) of the desired direction (the mean) about 68% of
the time, and within 10 degrees (two standard deviations) about 95% of the 
time. The lower the given deviation, the greater chance the returned value 
will be near the given mean, and the more accurate the aim of the AI would be.

From the Wikipedia entry on [normal distribution]:

![right](/images/gaussian_distribution.png "standard deviation")

> In [probability theory], the *normal* (or *Gaussian*) *distribution*
> is a [continuous probability distribution] that is often used as a first 
> approximation to describe real-valued [random variables] that tend to 
> cluster around a single [mean] value. The graph of the associated 
> [probability density function] is "bell"-shaped, and is known as the 
> *[Gaussian function]* or *bell curve*:
>
> $$f(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{ -\frac{(x-\mu)^2}{2\sigma^2} }$$
>
> where parameter \(\mu\) is the [mean] (location of the peak) and 
> \(\sigma^2\) is the [variance] (the measure of the width of the 
> distribution). The distribution with \(\mu = 0\) and \(\sigma^2 = 1\) is 
> called the *standard normal*.

script: gauss.gml

contributors: Yourself

[normal distribution]: http://en.wikipedia.org/wiki/Normal_distribution 
[probability theory]: http://en.wikipedia.org/wiki/Probability_theory 
[continuous probability distribution]: http://en.wikipedia.org/wiki/Continuous_probability_distribution#Continuous_probability_distribution
[random variables]: http://en.wikipedia.org/wiki/Random_variable
[mean]: http://en.wikipedia.org/wiki/Mean
[probability density function]: http://en.wikipedia.org/wiki/Probability_density_function 
[Gaussian function]: http://en.wikipedia.org/wiki/Gaussian_function 
[variance]: http://en.wikipedia.org/wiki/Variance 
[Petter Strandmark]: http://en.wikipedia.org/wiki/File:Standard_deviation_diagram.svg