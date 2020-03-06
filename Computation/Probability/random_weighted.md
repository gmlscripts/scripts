random_weighted
===============

This function randomly selects an index based on its probability
relative to the probabilities of the other given indices. For
instance, if the supplied probabilities are 1, 2, and 3, giving
a chance ratio of n/6, where 6 is the sum of the probabilities,
the first index will be returned 1/6 of the time, the second index
will be returned 2/6 of the time, and the third index will be
returned 3/6 of the time.

demo: random_weighted 416 160
Click display to restart with new weights.

script: random_weighted.gml

contributors: xot
