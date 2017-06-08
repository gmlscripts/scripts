/// merge_colors(col1,col2,...,amount)
//
//  Returns a color merged from a series of two or more colors by
//  a given amount. An amount value of 0 returns the first color,
//  a value of 1 returns the last color, and values in-between
//  return a mix of two adjacent colors in the series.
//
//      col1        first color
//      col2        next color
//      ...         additional colors, optional
//      amount      blend factor, [0,1]
//
/// GMLscripts.com/license
{
    var colors = argument_count-1;
    var amount = clamp(argument[colors], 0, 1);
    var n = amount * (colors-1);
    var col1 = floor(n);
    var col2 = col1 + 1;
    return merge_color(argument[col1], argument[col2], frac(n));
}