spline
======

A Catmull-Rom spline interpolates smoothly between knot[1] and knot[n-2],
where n is the number of knots. Because the spline is a cubic polynomial,
there must be at least four knots. See [spline4] for a version optimized
for four knots.

> [Wikipedia]: The curve is named after Edwin Catmull and Raphie Rom.
> In computer graphics, Catmull-Rom splines are frequently used to get
> smooth interpolated motion between key frames. For example, most camera
> path animations generated from discrete key-frames are handled using
> Catmull-Rom splines. They are popular mainly for being relatively easy
> to compute, guaranteeing that each key frame position will be hit exactly,
> and also guaranteeing that the tangents of the generated curve are
> continuous over multiple segments.

![spline](/images/spline.png "spline")

script: spline.gml

contributors: xot

[spline4]: /script/spline4
[Wikipedia]: http://en.wikipedia.org/wiki/Catmull-Rom_spline#Catmull.E2.80.93Rom_spline