#define next_pow2
/// next_pow2(n)
//
//  Returns the next power-of-two greater-than or equal-to a given value.
//
//      n       positive integer
//
/// GMLscripts.com/license
{
	var n = argument0 - 1;
	n |= (n >>  1);
	n |= (n >>  2);
	n |= (n >>  4);
	n |= (n >>  8);
	n |= (n >> 16);
	n |= (n >> 32);
	return n + 1;
}
