#define draw_background_tiled_area
/// draw_background_tiled_area(background,x,y,x1,y2,x2,y2)
//
//  Draws a repeated background image, tiled to fill a given region and with
//  a given offset. 
//
//      background  background to be drawn
//      x,y         origin offset, real
//      x1,y1       top-left corner of tiled area, real
//      x2,y2       bottom-right corner of tiled area, real
//
/// GMLscripts.com/license
{
    var bg,xx,yy,x1,y1,x2,y2;
    bg = argument0;
    xx = argument1;
    yy = argument2;
    x1 = argument3;
    y1 = argument4;
    x2 = argument5;
    y2 = argument6;
    
    var bw,bh,i,j,jj,left,top,width,height,X,Y;
    bw = background_get_width(bg);
    bh = background_get_height(bg);
    
    i = x1-((x1 mod bw) - (xx mod bw)) - bw*((x1 mod bw)<(xx mod bw));
    j = y1-((y1 mod bh) - (yy mod bh)) - bh*((y1 mod bh)<(yy mod bh)); 
    jj = j;
    
    for(i=i; i<=x2; i+=bw) {
        for(j=j; j<=y2; j+=bh) {
        
            if(i <= x1) left = x1-i;
            else left = 0;
            X = i+left;
            
            if(j <= y1) top = y1-j;
            else top = 0;
            Y = j+top;
            
            if(x2 <= i+bw) width = ((bw)-(i+bw-x2)+1)-left;
            else width = bw-left;
            
            if(y2 <= j+bh) height = ((bh)-(j+bh-y2)+1)-top;
            else height = bh-top;
            
            draw_background_part(bg,left,top,width,height,X,Y);
        }
        j = jj;
    }
    return 0;
}