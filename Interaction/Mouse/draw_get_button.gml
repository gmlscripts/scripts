#define draw_get_button
/// draw_get_button(x,y,str,width,height,color,hover,bgcolor)
//
//  Draws a simple labeled button on the screen and returns true
//  if it has been clicked using the left mouse button. This should
//  be called during a Draw Event is intended for testing purposes. 
//  Text alignment will be set to horizontal and vertical centering.
//
//      x,y         position to draw center of button, real
//      str         text to display inside button, string
//      width       width of button, real
//      height      height of button, real
//      color       color of text, real
//      hover       color of text when mouse is over button, real
//      bgcolor     color of background when mouse is over button, real
//
/// GMLscripts.com/license
{
    var xx,yy,str,w,h,col1,col2,col3,prev_color,prev_alpha,bl,br,bt,bb,in;
    xx = argument0;
    yy = argument1;
    str = argument2;
    w = argument3 / 2;
    h = argument4 / 2;
    col1 = argument5;
    col2 = argument6;
    col3 = argument7;
    prev_color = draw_get_color();
    prev_alpha = draw_get_alpha();
    bl = xx - w;
    br = xx + w;
    bt = yy - h;
    bb = yy + h;
    in = (mouse_x>bl && mouse_x<br && mouse_y>bt && mouse_y<bb);
    if (in) {
        draw_set_color(col3);
        draw_set_alpha(0.2);
        draw_rectangle(bl,bt,br,bb,false);
        draw_set_color(col2);
        draw_set_alpha(1);
    }else{
        draw_set_color(col1);
        draw_set_alpha(0.3);
    }
    draw_rectangle(bl,bt,br,bb,true);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(xx,yy,str);
    draw_set_color(prev_color);
    draw_set_alpha(prev_alpha);
    return (in && mouse_check_button_pressed(mb_left));
}