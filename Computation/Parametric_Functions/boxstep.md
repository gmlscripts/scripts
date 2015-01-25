boxstep
=======

The boxstep function is somewhere between [step] and [smoothstep].
It is the result of the convolution of a box filter with a step edge. 
The width of the box filter is (b - a) and the slope of the ramp is 1/width.

![boxstep](/images/boxstep1.gif "boxstep")

script: boxstep.gml

contributors: xot

[step]: /script/step
[smoothstep]: /script/smoothstep
