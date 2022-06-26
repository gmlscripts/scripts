combination
===========

Returns the number of unique subsets created from all
combinations of a number of elements. The order of the
chosen elements is not significant.

$$\mathrm{C}_{k}^{n} = \frac{n\times(n-1)\times(n-2)\cdots(n-k+1)}{k!}$$

Example: In a lottery, five numbers are selected from a pool of 49
unique numbers. The numbers are removed from the pool as they are
selected and their order is not important. The number of possible
outcomes is equal to \(C(49,5)\) or \(1906884\). The odds of correctly
picking the one winning combination is \(1 / 1906884\).

Example:  In a card game, a player is dealt five cards from a standard
deck of 52. What are the odds the player has been dealt a pair of aces?
In order to be dealt exactly two aces, the player must be dealt a combination
of two of four aces, \(C(4,2)\), and a combination of three of 48 non-ace
cards, \(C(48,3)\), for a total of five cards. The odds are calculated by
dividing the product of those combinations by the number of combinations of
any five cards from a deck of 52. The odds of being dealt two aces equals
\(C(4,2) \times C(48,3) \div C(52,5) = 0.0399298181\) or about 4%.

script: combination.gml

contributors: xot
