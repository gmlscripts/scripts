permutation
===========

Returns the number of unique subsets created from all
permutations of a number of elements. The order of the
chosen elements is significant. 

$$P(n,k) = \mathrm{P}_{k}^{n} = \frac{n!}{(n-k)!}$$

Example: If Alice, Bob, and Carol are playing a board game,
the order they take turns can be one of \(P(3,3) = 6\)
possibilities. They are: ABC, ACB, BAC, BCA, CAB, CBA.

Example: In a race of six Olympians, only three can win
bronze, silver, and gold medals. The number of possible
medalist outcomes is equal to \(P(6,3) = 120\).

script: permutation.gml

contributors: xot
