#define constrain
/// constrain(x,min,max)
//  
//  Returns the n value within the range {min,max}
//
//      n           The value to constrain
//      min         The minimum limit, n will not be smaller than this value
//      max         The maximum limit, n will not be larger than this value
//
/// GMLscripts.com/license
{
	var n,minn,maxn;
	n=argument0;
	minn=argument1;
	maxn=argument2;
	return max(min(maxn,n),minn);
}