polygon_area
============

The area of a simple concave polygon is one half the sum of the cross products of the adjacent edges. 

$$\large A=\frac{1}{2}\sum_{i=0}^{N-1}(x_iy_{i+1}-x_{i+1}y_i)$$

The sign of the result indicates the winding of the polygon, clockwise or counter-clockwise.
Holes can be accounted for if the winding of the hole edges is the reverse of the perimeter edges.

Note: Be sure to use the absolute value of the return for the true area of the polygon.

script: polygon_area.gml

contributors: xot
