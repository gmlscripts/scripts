#define draw_sprite_percent
/// draw_sprite_percent(sprite,percent,x,y,restrict)
//  GM:S v2.3+ compatible
//
//  Draws a sprite using a percentage to select a subimage to draw,
//  the first subimage at 0% and the last subimage at 100%. Returns
//  the selected subimage. Useful for a health gauge or progress bar.
//
//  @param sprite      sprite, real
//  @param percent     percentage [0..100], real
//      x,y         position to draw, real
//  @param restrict    true if first and last subimages only
//                  appear at exactly 0 and 100 percent, bool
//
/// GMLscripts.com/license
function draw_sprite_percent(sprite,percent,x,y,restrict) {
    var n,inde;
    n = sprite_get_number(sprite);
    if (percent >= 100) index = (n-1);
    else if (percent <= 0) index = 0;
    else{
        index = round(percent*(n-1)/100);
        if (restrict) index = min(max(1,index),(n-2));
    }
    draw_sprite(sprite,index,x,y);
    return index;
}