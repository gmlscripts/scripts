#define merge_color_squared
/// merge_color_squared(col1,col2,amount)
//  GM:S v2.3+ compatible
//
//  Returns a color merged from two colors by a given amount,
//  where color components are squared for a more natural mix.
//  An amount value of 0 returns the first color (col1), a 
//  value of 1 returns the second color (col2), and values 
//  in-between return a mix of the two colors. 
//
//  @param col1        first color
//  @param col2        second color
//  @param amount      blend factor [0,1]
//
/// GMLscripts.com/license
function merge_color_squared(col1,col2,amount) {
    var amount = clamp( 0, 1);
    
    var r = sqrt(lerp(sqr(color_get_red(col1)),
                      sqr(color_get_red(col2)),
                      amount));
    
    var g = sqrt(lerp(sqr(color_get_green(col1)),
                      sqr(color_get_green(col2)),
                      amount));
    
    var b = sqrt(lerp(sqr(color_get_blue(col1)),
                      sqr(color_get_blue(col2)),
                      amount));
                  
    return make_color_rgb(r,g,b);
}