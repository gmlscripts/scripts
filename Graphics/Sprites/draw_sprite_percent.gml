#define draw_sprite_percent
/// draw_sprite_percent(sprite,percent,x,y,restrict)
//
//  Draws a sprite using a percentage to select a subimage to draw,
//  the first subimage at 0% and the last subimage at 100%. Returns
//  the selected subimage. Useful for a health gauge or progress bar.
//
//      sprite      sprite, real
//      percent     percentage [0..100], real
//      x,y         position to draw, real
//      restrict    true if first and last subimages only
//                  appear at exactly 0 and 100 percent, bool
//
/// GMLscripts.com/license
{
    var n,index;
    n = sprite_get_number(argument0);
    if (argument1 >= 100) index = (n-1);
    else if (argument1 <= 0) index = 0;
    else{
        index = round(argument1*(n-1)/100);
        if (argument4) index = min(max(1,index),(n-2));
    }
    draw_sprite(argument0,index,argument2,argument3);
    return index;
}