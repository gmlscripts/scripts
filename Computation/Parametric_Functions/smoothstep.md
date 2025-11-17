smoothstep
==========

This function makes a smooth transition from 0 to 1 beginning at
threshold a and ending at threshold b. In order to do this,
smoothstep contains a cubic function whose slope is 0 at a and b
and whose value is 0 at a and 1 at b. There is only one cubic
function that has these properties for a = 0 and b = 1, namely
the function \(3x^2 - 2x^3\). This function can be used to provide
smooth transitions between values or to "ease" animation in and out.

![smoothstep](/images/smoothstep.png "smoothstep")

script: smoothstep.gml

contributors: xot
