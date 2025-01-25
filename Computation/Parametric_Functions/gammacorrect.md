gammacorrect
============

This function is used to compensate for the nonlinearity of CRT display
systems. If t varies over the [0,1] interval, then the result is also in
that interval. The zero and one endpoints are mapped onto themselves.
Other values are shifted upward toward one if gamma is greater than one,
and shifted downward toward zero if gamma is between zero and one.

![gamma correct](/images/gammacorrect1.png "gamma correct")

script: gammacorrect.gml

contributors: xot
